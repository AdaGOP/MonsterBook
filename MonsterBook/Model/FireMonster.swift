//
//  FireMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class FireMonster: Monster {
    var heat: String?
    
    init(name: String, age: Int, description: String, heat: String) {
        super.init(name: name, age: age, description: description)
        self.heat = heat
    }
}
