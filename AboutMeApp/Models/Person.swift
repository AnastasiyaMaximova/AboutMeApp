//
//  Person.swift
//  AboutMeApp
//
//  Created by Anastasya Maximova on 04.11.2024.
//

import Foundation

struct User {
    let name: String
    let password: String
    let person: Person
    
    static func getUser() -> (User){
        User(name: "User", password: "Password", person: .getPerson())
    }
}

struct Person {
    let name: String
    let surname: String
    let profession: String
    let biography: String
    
    static func getPerson() -> (Person){
        Person(
            name: "Anastasya",
            surname: "Maksimova",
            profession: "Eexpert on estimate and contractual work",
            biography: """
            I was born and raised in the city of Vladimir. Seven years ago, I was invited to work at the Skolkovo Innovation Center. My field of work is procurement, contractual and estimate activities. The location of the Innovation Center inspires growth and development, so now I am studying at SwiftBook.
            """
        )
    }
}
