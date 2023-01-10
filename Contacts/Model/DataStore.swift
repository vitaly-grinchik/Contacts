//
//  DataStore.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

final class DataStore {

    private let names = [
        "Oliver",
        "Jack",
        "Harry",
        "Jacob",
        "Charley",
        "Thomas",
        "George",
        "Oscar",
        "James",
        "William",
        "Anna",
        "Maria",
        "Sophia",
        "Catherine",
        "Victoria",
        "Alexandra",
        "Eva",
        "Diana",
        "Anastasia",
        "Veronica"
    ]

    private let surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Jones",
        "Brown",
        "Davis",
        "Miller",
        "Wilson",
        "Moore",
        "Taylor",
        "Anderson",
        "Thomas",
        "Jackson",
        "White",
        "Harris",
        "Martin",
        "Thompson",
        "Garcia",
        "Martinez",
        "Robinson"
    ]

    private let mailServers = [
        "gmail.com",
        "hotmail.com",
        "icloud.com",
        "yahoo.com"
    ]
}

extension DataStore {
    
    private func createRandomEmailFor(_ name: String, _ surname: String) -> String {
        var email = name.lowercased()
        email.append(".")
        email.append(surname.lowercased())
        email.append("@")
        email.append(mailServers.randomElement() ?? "gmail.com")
        return email
    }

    private func createRandomPhone() -> String {
        let countryCode = String(Int.random(in: 1...375))
        let operatorCode = String(Int.random(in: 11...100))
        var subscriberNumber = "xxx-xx-xx"

        let numbers = subscriberNumber.map { (element) -> String in
            if element != "-" {
                return String(Int.random(in: 0...9))
            } else {
                return "-"
            }
        }
        subscriberNumber = numbers.joined()
        
        return "+" + countryCode + " " + operatorCode + " " + subscriberNumber
    }
    
    func createRandomPerson() -> Person {
            let randomNameIndex = Int.random(in: 0..<names.count)
            let randomSurnameIndex = Int.random(in: 0..<surnames.count)
            let randomName = names[randomNameIndex]
            let randomSurname = surnames[randomSurnameIndex]
            
            let person = Person(
                name: randomName,
                surname: randomSurname,
                phone: createRandomPhone(),
                email: createRandomEmailFor(randomName, randomSurname)
            )
        return person
    }
}
