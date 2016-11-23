//
//  ConnectBankAccountViewController.swift
//  Melon
//
//  Created by Siyao Xie on 11/7/16.
//  Copyright © 2016 Siyao Xie. All rights reserved.
//

import UIKit
import SnapKit

class ConnectBankAccountViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var plaid = Plaidster.init(clientID: "581ee2bda753b94cacdbce76", secret: "3277949418c014394b0224227a6324", mode: PlaidEnvironment.development)
    
    var usernameField : UITextField!
    var passwordField : UITextField!
    var bankField : UIPickerView!
    var submitButton : UIButton!
    var banks = ["bofa", "chase"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        usernameField = UITextField()
        usernameField.placeholder = "username"
        usernameField.textColor = UIColor.black
        usernameField.borderStyle = UITextBorderStyle.roundedRect
        usernameField.clearsOnBeginEditing = true
        usernameField.autocapitalizationType = .none
        view.addSubview(usernameField)
        
        passwordField = UITextField()
        passwordField.placeholder = "password"
        passwordField.textColor = UIColor.black
        passwordField.borderStyle = UITextBorderStyle.roundedRect
        passwordField.clearsOnBeginEditing = true
        passwordField.autocapitalizationType = .none
        passwordField.isSecureTextEntry = true
        view.addSubview(passwordField)
        
        bankField = UIPickerView()
        bankField.dataSource = self
        bankField.delegate = self
        bankField.layer.borderColor = UIColor.black.cgColor
        bankField.layer.borderWidth = 1
        view.addSubview(bankField)
        
        submitButton = UIButton(type: UIButtonType.system)
        submitButton.backgroundColor = UIColor.blue
        submitButton.addTarget(self, action: #selector(self.submitButtonPressed), for: UIControlEvents.touchUpInside)
        view.addSubview(submitButton)
        
        usernameField.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 200, height: 50))
            make.centerX.equalTo(self.view)
            make.top.equalTo(100)
        }
        
        passwordField.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 200, height: 50))
            make.centerX.equalTo(self.view)
            make.top.equalTo(usernameField.snp.bottom).offset(15)
        }
        
        bankField.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 200, height: 50))
            make.centerX.equalTo(self.view)
            make.top.equalTo(passwordField.snp.bottom).offset(15)
        }
        
        submitButton.snp.makeConstraints { (make) -> Void in
            make.size.equalTo(CGSize(width: 200, height: 50))
            make.centerX.equalTo(self.view)
            make.top.equalTo(bankField.snp.bottom).offset(15)
        }

    }
    
    func submitButtonPressed() {
        let type = banks[bankField.selectedRow(inComponent: 0)]
        plaid.addUser(username: usernameField.text!, password: passwordField.text!, pin: nil, type: type) { (accessToken, mfaType, mfa, accounts, transactions, error) -> (Void) in
            if accessToken != nil {
                print("success! token %@", accessToken)
            }
        }
    }
    
    //MARK: - Picker Delegates and data sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView,
                           numberOfRowsInComponent component: Int) -> Int {
        return banks.count
    }
    
    func numberOfRows(inComponent component: Int) -> Int {
        return banks.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return banks[row]
    }
    
}
