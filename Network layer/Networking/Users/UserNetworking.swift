//
//  UserNetworking.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation



enum UserNetworking {
    
    case getusers
    
    
    
}

extension UserNetworking :TargetType {
    var baseurl: String {
        switch self {
        default:
            return "https://reqres.in/api"
        }
    }
    var path: String {
        switch self {
        case.getusers:
            return "/users"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case.getusers :
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getusers:
            return .plaintext
            
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default :
            return [:]
            
            
        }
    }
    
    
    
    
    
    
    
    
}
