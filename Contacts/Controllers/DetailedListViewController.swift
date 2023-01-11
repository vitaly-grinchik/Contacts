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
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "richCell", for: indexPath)
        let person = contacts[indexPath.row]
        
        var cellContent = cell.defaultContentConfiguration()
        cellContent.text = person.fullName
        cell.contentConfiguration = cellContent
        
        return cell
    }

}
