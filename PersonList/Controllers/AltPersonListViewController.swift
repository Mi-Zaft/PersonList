//
//  AltPersonListViewController.swift
//  PersonList
//
//  Created by Максим Евграфов on 09.06.2023.
//

import UIKit

class AltPersonListViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persons = Person.getPersons()
    }
}

// MARK: - Table View Data Source
extension AltPersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let person = persons[section]
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 30))
        headerView.backgroundColor = .lightGray
        headerView.tintColor = .blue
        
        let headerLabel = UILabel()
        headerLabel.text = "\(person.name) \(person.surname)"
        headerLabel.textColor = .black
        headerLabel.frame = CGRect(x: 16, y: 0, width: tableView.frame.width, height: 30)
        
        headerView.addSubview(headerLabel)
        
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(persons[section].name) \(persons[section].surname)"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "personPhone", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            content.image = UIImage(systemName: "phone")
            content.text = persons[indexPath.section].phone
            
            cell.contentConfiguration = content
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "personEmail", for: indexPath)
            var content = cell.defaultContentConfiguration()
            
            content.image = UIImage(systemName: "tray")
            content.text = persons[indexPath.section].email
            
            cell.contentConfiguration = content
            return cell
        }
    }
}
