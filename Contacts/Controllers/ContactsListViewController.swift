//
//  ContactsListViewController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

import UIKit

final class ContactsListViewController: UIViewController {

    var contactList = Person.getRandomListFor(numberOfPersons: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

