//
//  TargetType.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
import Alamofire

enum HTTPMethod:String {
    case get = "GET"
    case post = "POST"
    case put  = "PUT"
    case delete = "DELETE"
}
enum Task {
    
    case plaintext
    case requestparametres(parametres:[String:Any],encoding : ParameterEncoding)
}

protocol TargetType {
    
    var baseurl:String  {get}
    var path:String  {get}
    var method : HTTPMethod  {get}
    var task : Task  {get}
    var headers : [String:String]? {get}
}
