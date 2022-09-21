//
//  MonsterMock.swift
//  MonsterBook
//
//  Created by Handy Handy on 19/09/22.
//

import Foundation

/// This data is created only for exercise. We will create Mock data on the UnitTesting, not in the project root

struct MonsterMock {
    static let data = [
        Monster(name: "Gloop1", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop2", age: 2, description: "Gloop is a very young monster", type: .earth),
        Monster(name: "Gloop3", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop4", age: 2, description: "Gloop is a very young monster", type: .air),
        Monster(name: "Gloop5", age: 2, description: "Gloop is a very young monster", type: .metal),
        Monster(name: "Gloop6", age: 2, description: "Gloop is a very young monster", type: .tree),
        Monster(name: "Gloop7", age: 2, description: "Gloop is a very young monster", type: .water),
        Monster(name: "Gloop8", age: 2, description: "Gloop is a very young monster", type: .water),
        Monster(name: "Gloop9", age: 2, description: "Gloop is a very young monster", type: .metal),
        Monster(name: "Gloop10", age: 2, description: "Gloop is a very young monster", type: .fire),
        Monster(name: "Gloop11", age: 2, description: "Gloop is a very young monster", type: .earth)
    ]
    
    enum MockError: Error {
        case monsterNotFound
    }
}
