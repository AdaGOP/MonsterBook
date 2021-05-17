//
//  AirMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class AirMonster: Monster {
    var speed: Int?
    
    init(name: String, age: Int, description: String, speed: Int) {
        super.init(name: name, age: age, description: description)
        self.speed = speed
    }
}
