//
//  GroundMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class GroundMonster: Monster {
    var groundType: String?
    
    init(name: String, age: Int, description: String, groundType: String) {
        super.init(name: name, age: age, description: description)
        self.groundType = groundType
    }
}
