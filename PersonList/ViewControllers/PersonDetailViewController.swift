//
//  PersonDetailViewController.swift
//  PersonList
//
//  Created by Максим Евграфов on 09.06.2023.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
