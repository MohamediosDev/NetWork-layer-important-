//
//  UserAPI.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

protocol UserApiProtocol {
     func getusers(completion : @escaping (Result<BaseResponse?
           ,NSError>) -> Void)
    func createUser(name:String , jop:String ,completion : @escaping (Result<CreateUserModel?,NSError>) -> Void)
}



class UserApi:BaseApi<UserNetworking>,UserApiProtocol {
    
    func getusers(completion: @escaping (Result<BaseResponse?, NSError>) -> Void) {
         self.fetchdata(target: .getusers, responseclass: BaseResponse.self) { (result) in
                   completion(result)
    }
    
    }
    func createUser(name:String , jop:String ,completion : @escaping (Result<CreateUserModel?,NSError>) -> Void){
        
        self.DataCreate(target: .createuser(name: name, job: jop), responseclass: CreateUserModel.self) { (result) in
            completion(result)
        }
        
    }
    
    
    
}
    
    
    
    

//
//  func createUser(name: String, job: String, completion: @escaping (Result<CreateUserResponse?, NSError>) -> Void) {
//      self.postData(target: .createUser(name: name, job: job), responseClass: CreateUserResponse.self) { (result) in
//          completion(result)
//      }
