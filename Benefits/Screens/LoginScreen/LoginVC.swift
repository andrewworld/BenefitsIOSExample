//
//  LoginVC.swift
//  Benefits
//
//  Created by Andrew on 29/11/2018.
//  Copyright © 2018 Andrew Inc. All rights reserved.
//

import UIKit
import Foundation

class LoginVC: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toggleButtonState()
        
        passwordTextField.isSecureTextEntry = true
        
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    @IBAction func login(_ sender: Any) {
       Auth.logIn(username: usernameTextField.text!, password: passwordTextField.text!)
    }
    
    private func toggleButtonState(){
        let usernameText = usernameTextField.text ?? ""
        let passwordText = passwordTextField.text ?? ""
        let isEnabled = !usernameText.isEmpty && !passwordText.isEmpty
        
        loginButton.isEnabled = isEnabled
        loginButton.alpha = isEnabled ? 1 : 0.5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        toggleButtonState()
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
