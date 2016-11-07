//
//  Transaction.swift
//  Melon
//
//  Created by Siyao Xie on 11/6/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit

class Transaction: NSObject {
    var name : String = ""
    var amount : NSNumber = (0)
    var date : Date = Date()
    var address : String = ""
    var pending : Bool = false
    var category : String = "Travel"
    
    func updateWithDictionary(_ dict: [String : Any]) {
        if ((dict["name"]) != nil) {
            self.name = dict["name"] as! String
        }
        
        if ((dict["amount"]) != nil) {
            self.amount = dict["amount"] as! NSNumber
        }

//        if ((dict["date"]) != nil) {
//            var dateFormatter = DateFormatter()
//            dateFormatter.dateFormat = "yyyy-MM-dd"
//            self.date = dateFormatter.date(from: dict["date"] as! String)
//        }
//
//        self.address = dict["meta"]?["location"]?["address"]? as! String
    }

}
