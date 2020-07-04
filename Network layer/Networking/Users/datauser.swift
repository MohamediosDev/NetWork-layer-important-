//
//  UserResponse.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

class datauser: Codable {
    var data:[USerdata]?
    
       enum CodingKeys: String , CodingKey{
           
           case data = "data"
           
       }
}
