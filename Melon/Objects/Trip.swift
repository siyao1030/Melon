//
//  Trip.swift
//  Melon
//
//  Created by Siyao Xie on 11/6/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit

class Trip : NSObject {
    var name : String
    var startDate : Date
    var endDate : Date
    var destinations : [String] = []
    var buddies : [People] = [People(name: "siyao")]
    
    init(name : String, startDate: Date, endDate: Date) {
        self.name = name
        self.startDate = startDate
        self.endDate = endDate
        
        super.init()
    }
    
}
