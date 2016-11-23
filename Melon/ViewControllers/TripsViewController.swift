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

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)

    }
    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trips.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            return _createNewTripCell()
        }
        
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let currentTrip:Trip = trips[indexPath.row - 1]
        cell.textLabel!.text = currentTrip.name
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        if ((indexPath as NSIndexPath).row == 0) {
            createNewTrip()
        } else {
            
        }
    }
    
    // MARK: - Private
    func _createNewTripCell() -> UITableViewCell {
        let cell:UITableViewCell=UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel!.text = "Create New Trip"
        
        return cell;
    }
    
    func createNewTrip() {
        let connectVC = ConnectBankAccountViewController()
        self .present(connectVC, animated: true, completion: nil)
    }


}
