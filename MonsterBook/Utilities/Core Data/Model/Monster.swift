//
//  File.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class Monster {
    var name: String?
    var age: Int?
    var description: String?
    var isFavorite: Bool?
    
    init(name: String, age: Int, description: String) {
        self.name = name
        self.age = age
        self.isFavorite = false
    }
    
}

