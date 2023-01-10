//
//  ViewController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

import UIKit

class ViewController: UIViewController {

    var contactList = Person.getRandomListFor(numberOfPersons: 5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

