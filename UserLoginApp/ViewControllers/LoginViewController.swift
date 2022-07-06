//
//  ViewController.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 30.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let person = Person()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = person.name + " " + person.surname
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.dateOfBirth = person.dateOfBirth
                userVC.placeOfBirth = person.placeOfBirth
                userVC.placeOfWork = person.placeOfWork
                userVC.post = person.post
                userVC.cityOfResidence = person.cityOfResidence
                userVC.hobbies = person.hobbies
            } else if let moreInfoVC = viewController as? MoreInfoViewController {
                moreInfoVC.favoriteDirectors = person.favoriteDirectors
                moreInfoVC.favoriteFilms = person.favouriteFilms
                moreInfoVC.favoriteSingers = person.favouriteSingers
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func loginAction(_ sender: UIButton) {
        guard userNameTF.text == person.username, passwordTF.text == person.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showTabBarController", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your username is \(person.username) 😉")
        : showAlert(title: "Oops!", message: "Your password is \(person.password) 😉")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
