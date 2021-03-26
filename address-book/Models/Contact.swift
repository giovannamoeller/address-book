//
//  Contact.swift
//  address-book
//
//  Created by Giovanna Moeller on 26/03/21.
//

import Foundation

struct Contact {
    let name: String
    let postalCode: Int
    let isFavorite: Bool
    let urlImage: String
    
    static var AllContacts = [
        Contact(name: "Alexis", postalCode: 10012, isFavorite: false, urlImage: "https://benjaminjurke.com/assets/images/authors/benjamin-jurke-v6.jpg"),
        Contact(name: "Anna", postalCode: 12429, isFavorite: true, urlImage: "https://pbs.twimg.com/profile_images/1096227324884910080/3FN117n3.jpg"),
        Contact(name: "John", postalCode: 13029, isFavorite: false, urlImage: "https://avatars3.githubusercontent.com/u/28613136?v=4"),
        Contact(name: "Pietro", postalCode: 14204, isFavorite: true, urlImage: "https://pbs.twimg.com/profile_images/1055263632861343745/vIqzOHXj.jpg")
    ]
}
