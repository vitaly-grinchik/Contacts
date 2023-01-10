//
//  DataStore.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

final class DataStore {
    static let names = [
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

    static let surnames = [
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

    static let mailServers = [
        "gmail.com",
        "hotmail.com",
        "icloud.com",
        "yahoo.com"
    ]
    
    class func getRandomEmailFor(name: String, surname: String) -> String {        
        var email = name.lowercased()
        email.append(".")
        email.append(surname.lowercased())
        email.append("@")
        email.append(mailServers.randomElement() ?? "gmail.com")
        return email
    }

    class func getRandomPhone() -> String {
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
}
