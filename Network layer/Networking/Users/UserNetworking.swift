//
//  UserNetworking.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import Alamofire



enum UserNetworking {
    
    case getusers
    case createuser(name:String ,job:String)
    
    
    
}

extension UserNetworking :TargetType {
    var baseurl: String {
        switch self {
        case .getusers:
                   return "http://dummy.restapiexample.com/api/v1"
               default:
                   return "https://reqres.in/api"
        }
    }
    var path: String {
        switch self {
        case.getusers:
            return "/employees"
        case.createuser:
            return "/users"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case.getusers :
            return .get
        case.createuser:
            return.post
        }
    }
    
    var task: Task {
        switch self {
        case .getusers:
            return .plaintext
            case .createuser(let name, let job):
                return .requestparametres(parametres: ["name": name, "job": job], encoding: JSONEncoding.default)
            
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default :
            return [:]
            
            
        }
    }
    
    
    
    
    
    
    
    
}
