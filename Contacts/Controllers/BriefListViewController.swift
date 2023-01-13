//
//  BriefListViewController.swift
//  Contacts
//
//  Created by Виталий Гринчик on 10.01.23.
//

import UIKit

final class BriefListViewController: UITableViewController {

    var contacts: [Person]!
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "briefCell", for: indexPath)
        let person = contacts[indexPath.row]
        
        var cellContent = cell.defaultContentConfiguration()
        cellContent.text = person.fullName
        cell.contentConfiguration = cellContent
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactVC.contact = contacts[indexPath.row]
    }
}
