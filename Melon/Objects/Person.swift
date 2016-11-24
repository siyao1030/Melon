//
//  People.swift
//  Melon
//
//  Created by Siyao Xie on 11/6/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name : String
    var accounts : [Account] = []
    
    init(name: String) {
        self.name = name
    }
    
    func addAccount(account : Account) {
        accounts.append(account)
    }

}
