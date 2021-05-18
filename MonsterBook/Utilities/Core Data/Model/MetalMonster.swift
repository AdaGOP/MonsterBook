//
//  MetalMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class MetalMonster: Monster {
    var color: String?
    
    init(name: String, age: Int, description: String, color: String) {
        super.init(name: name, age: age, description: description)
        self.color = color
    }
}
