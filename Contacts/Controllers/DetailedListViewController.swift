//
//  DetailedListViewController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

import UIKit

class DetailedListViewController: UITableViewController {

    var contacts: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let person = contacts[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedCell", for: indexPath)
    
        var cellContent = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            cellContent.text = person.phone
            cellContent.image = UIImage(systemName: "phone")
            cell.contentConfiguration = cellContent
        } else {
            cellContent.text = person.email
            cellContent.image = UIImage(systemName: "envelope")
            cell.contentConfiguration = cellContent
        }
        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
}
