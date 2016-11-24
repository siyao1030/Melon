//
//  PeopleViewController.swift
//  Melon
//
//  Created by Siyao Xie on 11/23/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit
import Foundation

class PeopleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var people : [Person] = []
    var accounts : [Account] = []
    var tableView: UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    var peopleButton : UIBarButtonItem?
    var createButton : UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButton = UIBarButtonItem(image: UIImage(named: "add"), style: .plain, target: self, action: #selector(createButtonPressed))
        
        navigationItem.title = "People"
        navigationItem.rightBarButtonItem = createButton
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "accountCell")
        view.addSubview(tableView)
        
    }
    // MARK: - Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return people.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return accounts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "accountCell")
        
        let currentAccount : Account = accounts[indexPath.row]
        cell.textLabel!.text = currentAccount.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    func refreshAccounts()
    {
        var refreshedAccounts : [Account] = []
        for person: Person in people {
            refreshedAccounts.append(contentsOf: person.accounts)
        }
        self.accounts = refreshedAccounts
    }
    
    func createButtonPressed()
    {
        
    }
}
