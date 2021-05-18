//
//  WaterMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class WaterMonster: Monster {
    var scale: String?
    
    init(name: String, age: Int, description: String, scale: String) {
        super.init(name: name, age: age, description: description)
        self.scale = scale
    }
    
}
