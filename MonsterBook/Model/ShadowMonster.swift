//
//  ShadowMonster.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 12/05/21.
//

import Foundation

class ShadowMonster: Monster {
    var thickness: Int?
    
    init(name: String, age: Int, description: String, thickness: Int) {
        super.init(name: name, age: age, description: description)
        self.thickness = thickness
    }
    
}
