//
//  User.swift
//  UserLoginApp
//
//  Created by Илья Сесюнин on 05.07.2022.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(login: "User",
             password: "Password",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let dateOfBirth: String
    let placeOfBirth: String
    let placeOfWork: String
    let post: String
    let cityOfResidence: String
    let hobbies: String
    let favoriteDirectors: String
    let favoriteFilms: String
    let favoriteSingers: String
    let instagramPhoto: String
    
    static func getPerson() -> Person {
        Person(name: "Ilya",
               surname: "Sesyunin",
               photo: "Ilya_Sesyunin",
               dateOfBirth: "01.08.1995",
               placeOfBirth: "Miass city",
               placeOfWork: "X5 Group",
               post: "Financial manager",
               cityOfResidence: "Moscow",
               hobbies: "Indie music, mobile photos, yoga and pilates",
               favoriteDirectors: "Lars von Trier and Hayao Miyazaki",
               favoriteFilms: "Dancer in the Dark and Howl's Moving Castle",
               favoriteSingers: "Mylène Farmer, Björk, M83, Tesla Boy, London Grammar, Woodkid, Cream Soda",
               instagramPhoto: "Ilya_Sesyunin_Instagram"
        )
    }
}
