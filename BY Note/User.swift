//
//  User.swift
//  BY Note
//
//  Created by Johnny bian on 2017/12/3.
//  Copyright © 2017年 Johnny bian Peirun Yu. All rights reserved.
//

struct User{
    var userName: String
    var email: String
    var password : String
    
    init(userName:String,email:String,password:String) {
        self.userName = userName
        self.email = email
        self.password = password
    }
}
