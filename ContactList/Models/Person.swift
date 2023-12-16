//
//  Person.swift
//  ContactList
//
//  Created by Sergey Balashov on 12/15/23.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    let phone: String
    let email: String

    // Метод для создания массива демо-данных
    static func getPersons(count: Int, dataStore: DataStore) -> [Person] {
        var tempPersonsArray: [Person] = []
        for _ in 1...count {
            let randomPerson = dataStore.createRandomPerson()
            tempPersonsArray.append(randomPerson)
        }
        return tempPersonsArray
    }
}
