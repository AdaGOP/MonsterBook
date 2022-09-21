//
//  MonsterFirstEvolution.swift
//  MonsterBook
//
//  Created by octavianus on 06/06/22.
//

import Foundation

class MonsterFirstEvolution: Monster {
    var numberOfClaw: Int
    
    init(monster: Monster ,numberOfClaw: Int) {
        self.numberOfClaw = numberOfClaw
        super.init(name: monster.name, age: monster.age, description: monster.description, type: monster.type!)
    }
}
