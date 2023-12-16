//
//  DataStore.swift
//  ContactList
//
//  Created by Sergey Balashov on 12/15/23.
//

import Foundation

// Класс DataStore
class DataStore {
    // Массивы с уникальными именами, фамилиями, телефонами и электронными адресами
    var uniqueFirstNames: [String] = ["John", "Jane", "Michael", "Emily", "David", "Alex", "Sophia", "William", "Olivia", "Daniel"]
    var uniqueLastNames: [String] = ["Doe", "Smith", "Johnson", "Williams", "Brown", "Jones", "Miller", "Davis", "Garcia", "Rodriguez"]
    var uniquePhones: [String] = ["1234567890", "9876543210", "5551234567", "9998887777", "1112223333", "4445556666", "7778889999", "3332221111", "6665554444", "8889990000"]
    var uniqueEmails: [String] = ["john.doe@example.com", "jane.smith@example.com", "michael.johnson@example.com", "emily.williams@example.com", "david.brown@example.com", "alex.jones@example.com", "sophia.miller@example.com", "william.davis@example.com", "olivia.garcia@example.com", "daniel.rodriguez@example.com"]

    // Метод для создания экземпляра Person с уникальными значениями
    func createRandomPerson() -> Person {
        let randomFirstName = uniqueFirstNames.remove(at: Int.random(in: 0..<uniqueFirstNames.count))
        let randomLastName = uniqueLastNames.remove(at: Int.random(in: 0..<uniqueLastNames.count))
        let randomPhone = uniquePhones.remove(at: Int.random(in: 0..<uniquePhones.count))
        let randomEmail = uniqueEmails.remove(at: Int.random(in: 0..<uniqueEmails.count))

        return Person(firstName: randomFirstName, lastName: randomLastName, phone: randomPhone, email: randomEmail)
    }
}
