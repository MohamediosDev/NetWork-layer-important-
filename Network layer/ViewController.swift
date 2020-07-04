//
//  ViewController.swift
//  Network layer
//
//  Created by Mohamed on 7/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let api = UserApi()
//        api.getusers { (result) in
//            switch result {
//
//            case .success(let response):
//                let users = response?.data
//                for users in users ?? [] {
//
//                    print("\(users.firstname ?? ""),\(users.lastname ?? "")")
//
//
//                }
//            case .failure(let error):
//            print("erroe with server")
        
        let api:UserApiProtocol = UserApi()
        api.createUser(name: "Soda", jop: "software engineer") { (result) in
            switch result {
    
            case .success(let response):
                print(response)
                print("name: \(response?.name ?? "")\n Jop:\(response?.job ?? "")/n id: \(response?.id ?? "")/n create : \(response?.createdAt ?? "")")
            case .failure(let error):
                print("Bad singal")
            }
        }
        
        
            }
        }
  
