//
//  Model.swift
//  ContactList
//
//  Created by user on 02.03.2023.
//

import Foundation
 
struct Person {
    let name: String
    let surname: String
    let number: String
    let email: String

    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        [
        Person(name: "Biba", surname: "Boba", number: "1111", email: "1111@mail.ru"),
        Person(name: "Chiki", surname: "Piki", number: "1111", email: "1111@mail.ru"),
        Person(name: "Pop", surname: "Dope", number: "1111", email: "1111@mail.ru")
        ]
    }
}

