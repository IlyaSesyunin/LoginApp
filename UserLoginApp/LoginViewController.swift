//
//  ViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 30.06.2022.
//

import UIKit

var users = ["User" : "Password", "Ilya" : "12345"]

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewControl else { return }
        welcomeVC.userName = userNameTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        if userNameTF.text == "" || passwordTF.text == "" {
            let alert = UIAlertController(title: "Oops!", message: "Enter username and password", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBtn)
            
            present(alert, animated: true)
        } else if passwordTF.text != users[userNameTF.text!] {
            let alert = UIAlertController(title: "Oops!", message: "Invalid username or password", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBtn)
            
            present(alert, animated: true)
            
            userNameTF.text = ""
            passwordTF.text = ""
        }
    }
    
    @IBAction func showForgotUserNameAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your name is User", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okBtn)
        
        present(alert, animated: true)
    }
    
    @IBAction func showForgotPasswordAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "Oops!", message: "Your password is Password", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okBtn)
        
        present(alert, animated: true)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewControl else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
}
