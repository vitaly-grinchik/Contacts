//
//  ContactViewController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

import UIKit

final class ContactViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var contact: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = contact.fullName    // опускаем navigationItem, т.к. свойство уже унаследовано
        phoneLabel.text = contact.phone
        emailLabel.text = contact.email
    }
}
