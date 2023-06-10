//
//  AltPersonListViewController.swift
//  PersonList
//
//  Created by Максим Евграфов on 09.06.2023.
//

import UIKit

class AltPersonListViewController: UITableViewController {
    
    var persons: [Person] = []
}

// MARK: - Table View Data Source
extension AltPersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personPhone", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: Contacts.phone.rawValue)
            content.text = person.phone
        default:
            content.image = UIImage(systemName: Contacts.email.rawValue)
            content.text = person.email
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
