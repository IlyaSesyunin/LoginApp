//
//  FirstViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 01.07.2022.
//

import UIKit

class WelcomeViewControl: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let mainVC = segue.destination as? LoginViewController else { return }
        mainVC.userNameTF.text = ""
    }
}
