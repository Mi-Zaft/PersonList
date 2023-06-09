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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailVC = segue.destination as? PersonDetailViewController else { return }
        let indexPath = tableView.indexPathForSelectedRow!
        let person = persons[indexPath.row]
        
        personDetailVC.person = person
        personDetailVC.navigationItem.title = "\(person.name) \(person.surname)"
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
        
        content.text = "\(person.name) \(person.surname)"
        
        cell.contentConfiguration = content
        
        return cell
    }
}

