//
//  TabBarViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBar.backgroundColor = .clear
        tabBar.standardAppearance = tabBarAppearance
    }
}
