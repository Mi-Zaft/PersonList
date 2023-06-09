//
//  Person.swift
//  PersonList
//
//  Created by Максим Евграфов on 07.06.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        var names = Data­Manager.names
        var surnames = Data­Manager.surnames
        var phones = Data­Manager.phones
        var emails = Data­Manager.emails
        
        while persons.count < Data­Manager.names.count {
            let randomName: String = names.randomElement()!
            let randomSurname: String = surnames.randomElement()!
            let randomNumber: String = phones.randomElement()!
            let randomEmail: String = emails.randomElement()!
            
            let person = Person(
                name: randomName,
                surname: randomSurname,
                phone: randomNumber,
                email: randomEmail
            )
            
            persons.append(person)
           
            names.remove(at: names.firstIndex(of: randomName)!)
            surnames.remove(at: surnames.firstIndex(of: randomSurname)!)
            phones.remove(at: phones.firstIndex(of: randomNumber)!)
            emails.remove(at: emails.firstIndex(of: randomEmail)!)
        }
        
        return persons
    }
}
