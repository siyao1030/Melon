//
//  TripDetailViewController.swift
//  Melon
//
//  Created by Siyao Xie on 11/6/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit

class TripDetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var transactions : [Transaction] = []
    var tableView: UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let currentTransaction:Transaction = transactions[indexPath.row]
        cell.textLabel!.text = currentTransaction.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }

}
