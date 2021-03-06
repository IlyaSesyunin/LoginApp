//
//  FirstViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 01.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(user.person.name) \(user.person.surname)!"
    }
}
