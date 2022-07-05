//
//  UserViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var placeOfBirthLabel: UILabel!
    @IBOutlet var placeOfWorkLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var cityOfResidenceLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    
    @IBOutlet var userImageView: UIImageView!
    
    var dateOfBirth = ""
    var placeOfBirth = ""
    var placeOfWork = ""
    var post = ""
    var cityOfResidence = ""
    var hobbies = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateOfBirthLabel.text = dateOfBirth
        placeOfBirthLabel.text = placeOfBirth
        placeOfWorkLabel.text = placeOfWork
        postLabel.text = post
        cityOfResidenceLabel.text = cityOfResidence
        hobbiesLabel.text = hobbies
        
        userImageView.layer.cornerRadius = 10
    }
}
