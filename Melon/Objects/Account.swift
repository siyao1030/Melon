//
//  Account.swift
//  Melon
//
//  Created by Siyao Xie on 11/23/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import Foundation

class Account: NSObject {
    var name : String
    var accessToken : String
    var bankType : String
    
    init(name: String, accessToken: String, bankType: String) {
        self.name = name
        self.accessToken = accessToken
        self.bankType = bankType
    }
    
}
