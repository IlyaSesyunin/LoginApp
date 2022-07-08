//
//  UserViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    
    @IBOutlet var nameNavigationItem: UINavigationItem!
    
    @IBOutlet var dateOfBirthLabel: UILabel!
    @IBOutlet var placeOfBirthLabel: UILabel!
    @IBOutlet var placeOfWorkLabel: UILabel!
    @IBOutlet var postLabel: UILabel!
    @IBOutlet var cityOfResidenceLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    
    @IBOutlet var userImageView: UIImageView! {
        didSet {
            userImageView.layer.cornerRadius = userImageView.frame.height / 2
            userImageView.layer.cornerRadius = userImageView.frame.width / 2
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameNavigationItem.title = user.person.name + " " + user.person.surname
        userImageView.image = UIImage(named: user.person.photo)
        dateOfBirthLabel.text = user.person.dateOfBirth
        placeOfBirthLabel.text = user.person.placeOfBirth
        placeOfWorkLabel.text = user.person.placeOfWork
        postLabel.text = user.person.post
        cityOfResidenceLabel.text = user.person.cityOfResidence
        hobbiesLabel.text = user.person.hobbies
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let moreInfoVC = segue.destination as? MoreInfoViewController else { return }
        moreInfoVC.user = user
    }
}
