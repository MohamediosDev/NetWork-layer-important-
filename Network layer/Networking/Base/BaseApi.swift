//
//  BaseUrl.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import Alamofire


//MARK:- main class for any api

class  BaseApi<T:TargetType> {
    
    
 //MARK:Get Data
    func fetchdata<M:Decodable>(target:T ,responseclass: M.Type, completion:@escaping (Result<M?, NSError>) -> Void) {
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let param  = buildparam(task: target.task)
        
        AF.request(target.baseurl + target.path , method: method , parameters: param.0 , encoding: param.1 , headers: headers).responseJSON { (respone) in
            guard let stauts = respone.response?.statusCode else {return}
            if stauts == 200 {
                
                guard let jsonresponse = try? respone.result.get() else {return}
                
                guard let JsonData = try? JSONSerialization.data(withJSONObject: jsonresponse, options: []) else {return}
                
                guard let responseobj = try? JSONDecoder().decode(M.self, from: JsonData) else {return}
                completion(.success(responseobj))
            }
            else {
            
            print("error")
            }
        }
    }
    
    
//MARK:- Psot data
    
    func DataCreate<M:Decodable>(target:T ,responseclass: M.Type, completion:@escaping (Result<M?, NSError>) -> Void) {
        let method = Alamofire.HTTPMethod(rawValue: target.method.rawValue)
        let headers = Alamofire.HTTPHeaders(target.headers ?? [:])
        let param  = buildparam(task: target.task)
        
        AF.request(target.baseurl + target.path , method: method , parameters: param.0 , encoding: param.1 , headers: headers).responseJSON { (respone) in
            guard let stauts = respone.response?.statusCode else {return}
           if stauts >= 200 && stauts < 300 {
                
                guard let jsonresponse = try? respone.result.get() else {return}
                
                guard let JsonData = try? JSONSerialization.data(withJSONObject: jsonresponse, options: []) else {return}
                
                guard let responseobj = try? JSONDecoder().decode(M.self, from: JsonData) else {return}
                completion(.success(responseobj))
            }
           else {
            
            print("error")
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//MARK:- Get param from Api
    
    private func buildparam(task:Task) -> ([String:Any],ParameterEncoding ) {
        switch task {
        
        case .plaintext:
            return([:],URLEncoding.default)
        case .requestparametres(parametres: let parametres, encoding: let encoding):
            return (parametres,encoding)
            
            
    }
    }
    }
    

