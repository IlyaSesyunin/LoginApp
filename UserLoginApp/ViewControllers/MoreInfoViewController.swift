//
//  MoreInfoViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

import UIKit

class MoreInfoViewController: UIViewController {

    @IBOutlet var favoriteDirectorsLabel: UILabel!
    @IBOutlet var favoriteFilmsLabel: UILabel!
    @IBOutlet var favoriteSingersLabel: UILabel!
    
    var favoriteDirectors = ""
    var favoriteFilms = ""
    var favoriteSingers = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        favoriteDirectorsLabel.text = favoriteDirectors
        favoriteFilmsLabel.text = favoriteFilms
        favoriteSingersLabel.text = favoriteSingers
    }
}
