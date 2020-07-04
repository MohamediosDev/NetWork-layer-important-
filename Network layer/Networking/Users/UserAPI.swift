//
//  UserAPI.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

protocol UserApiProtocol {
     func getusers(completion : @escaping (Result<datauser?
           ,NSError>) -> Void)
}



class UserApi:BaseApi<UserNetworking>,UserApiProtocol {
    
    func getusers(completion: @escaping (Result<datauser?, NSError>) -> Void) {
         self.fetchdata(target: .getusers, responseclass: datauser.self) { (result) in
                   completion(result)
    }
    
  
      
        
        
    }
    
}
    
    
    
    

