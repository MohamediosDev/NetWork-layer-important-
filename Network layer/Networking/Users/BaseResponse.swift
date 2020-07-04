//
//  UserResponse.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

class BaseResponse: Codable {
    var data:[USerdata]?
    var createdata:[CreateUserModel]?
    
       enum CodingKeys: String , CodingKey{
           
           case data = "data"
           case createdata  = "createdata"
           
       }
}
