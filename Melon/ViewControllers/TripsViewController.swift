//
//  TripsViewController.swift
//  Melon
//
//  Created by Siyao Xie on 11/6/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit
import Foundation

class TripsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var trips : [Trip] = [Trip(name: "Trip to LA", startDate: Date(), endDate: Date())]
    var tableView: UITableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.plain)
    var peopleButton : UIBarButtonItem?
    var createButton : UIBarButtonItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createButton = UIBarButtonItem(image: UIImage(named: "add"), style: .plain, target: self, action: #selector(createButtonPressed))
        peopleButton = UIBarButtonItem(image: UIImage(named: "person"), style: .plain, target: self, action: #selector(peopleButtonPressed))

        navigationItem.title = "My Trips"
        navigationItem.leftBarButtonItem = peopleButton
        navigationItem.rightBarButtonItem = createButton
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)

    }
    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let currentTrip:Trip = trips[indexPath.row]
        cell.textLabel!.text = currentTrip.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
    }
    
    func createButtonPressed() {
        let connectVC = ConnectBankAccountViewController()
        self .present(connectVC, animated: true, completion: nil)
    }
    
    func peopleButtonPressed() {
        let connectVC = ConnectBankAccountViewController()
        self .present(connectVC, animated: true, completion: nil)
    }
}
