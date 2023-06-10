//
//  ViewController.swift
//  PersonList
//
//  Created by Максим Евграфов on 07.06.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
            
            personDetailVC.person = persons[indexPath.row]
        }
    }
}

// MARK: - Table View Data Source
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

