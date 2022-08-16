//
//  Character.swift
//  TestApp
//
//  Created by Elenka on 15.08.2022.
//

struct Character {
    let name: String
    let house: String
    let image: String
    let alignment: String
    
    static func getCharacterList() -> [Character] {
        [
            Character(name: "Harry", house: "Griffindor", image: "123", alignment: "Good"),
            Character(name: "Ron", house: "Griffindor", image: "1234", alignment: "Good")
        ]
    }
}
