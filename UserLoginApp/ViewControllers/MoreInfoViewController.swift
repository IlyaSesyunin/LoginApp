//
//  MoreInfoViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var nameNavigationItem: UINavigationItem!
    
    @IBOutlet var favoriteDirectorsLabel: UILabel!
    @IBOutlet var favoriteFilmsLabel: UILabel!
    @IBOutlet var favoriteSingersLabel: UILabel!
    
    @IBOutlet var instagramImageView: UIImageView! {
        didSet {
            instagramImageView.layer.cornerRadius = 10
        }
    }
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameNavigationItem.title = "More info about \(user.person.name)"
        favoriteDirectorsLabel.text = user.person.favoriteDirectors
        favoriteFilmsLabel.text = user.person.favoriteFilms
        favoriteSingersLabel.text = user.person.favoriteSingers
        instagramImageView.image = UIImage(named: user.person.instagramPhoto)
    }
}
