//
//  DataStore.swift
//  PersonList
//
//  Created by Максим Евграфов on 07.06.2023.
//

import Foundation

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Alexey",
        "Vladislav",
        "Andrey",
        "Nikita",
        "Maxim",
        "Ivan",
        "Alexandr",
        "Artem",
        "Georgiy",
        "Anton"
    ]
    
    let surnames = [
        "Grigoriev",
        "Petrov",
        "Nikolajev",
        "Kondratiev",
        "Konishuk",
        "Efremov",
        "Ermolin",
        "Terenteev",
        "Sokolov",
        "Soloviev"
    ]
    
    let phones = [
        "+7 (918) 712-92-18",
        "+7 (928) 817-18-82",
        "+7 (918) 172-16-83",
        "+7 (918) 019-81-82",
        "+7 (918) 639-91-74",
        "+7 (999) 759-81-81",
        "+7 (952) 916-90-91",
        "+7 (988) 619-51-15",
        "+7 (918) 085-91-51",
        "+7 (923) 951-82-26"
    ]
    
    let emails = [
        "grigoriev1995@gmail.com",
        "tiger999@bk.ru",
        "robot1992@mail.ru",
        "najem@seznam.cz",
        "kluk@seznam.cz",
        "robocop@gmail.com",
        "terminator@bk.ru",
        "angry-dog@mail.ru",
        "energy-172.12@mail.ru",
        "kitchen123@gmail.com"
    ]
    
    private init() {}
}
