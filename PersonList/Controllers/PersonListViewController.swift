//
//  ViewController.swift
//  PersonList
//
//  Created by Максим Евграфов on 07.06.2023.
//

import UIKit

class PersonListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = Person.getPersons()
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
//        let indexPath = tableView.indexPathForSelectedRow!
//        
//        personDetailVC.phone = persons[indexPath.row].phone
//    }
}

// MARK: - Table View Data Source
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        
        let person = persons[indexPath.row]
        
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }
}

