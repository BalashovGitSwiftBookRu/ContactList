//
//  Person.swift
//  ContactList
//
//  Created by Sergey Balashov on 12/15/23.
//

import Foundation

// Модель данных Person
struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    var phone: String
    var email: String

    // Метод для создания массива демо-данных
    static func getPersons(count: Int, dataStore: DataStore) -> [Person] {
        var demoDataArray: [Person] = []
        for _ in 1...count {
            let randomPerson = dataStore.createRandomPerson()
            demoDataArray.append(randomPerson)
        }
        return demoDataArray
    }
}
