//
//  UserModel.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation



class USerdata: Codable {
    
    var firstname:String?
    var lastname:String?
    
    enum CodingKeys: String , CodingKey{
        
        case firstname = "first_name"
        case lastname = "last_name"
        
        
        
    }
    
}
