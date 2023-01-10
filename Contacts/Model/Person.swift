//
//  Person.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
      
    static func getRandomListFor(numberOfPersons: Int) -> [Person] {
        let dataSource = DataStore()
        var contacts: [Person] = []
        for _ in 1...numberOfPersons {
            let person = dataSource.createRandomPerson()
            contacts.append(person)
        }
        return contacts
    }
}
