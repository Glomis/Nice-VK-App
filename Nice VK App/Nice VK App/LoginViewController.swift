//
//  ViewController.swift
//  Nice VK App
//
//  Created by Tatyana on 16.10.2020.
//  Copyright © 2020 Max&Co. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var login = ""
    var password = ""
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.delegate = self
        passwordTF.delegate = self
    }
    
    @IBAction func pressed(_ sender: UIButton) {
        guard loginTF.text == login, passwordTF.text == password else { return }
        performSegue(withIdentifier: "successfulCheck", sender: sender)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == loginTF {
            loginTF.resignFirstResponder()
            passwordTF.becomeFirstResponder()
        } else {
            passwordTF.resignFirstResponder()
        }
        return true
    }
}

