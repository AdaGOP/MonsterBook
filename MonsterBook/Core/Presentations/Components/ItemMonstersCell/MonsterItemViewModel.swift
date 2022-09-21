//
//  MonsterItemViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 19/09/22.
//

import Foundation

struct MonsterItemViewModel {
    let monster: Monster
    let name: String
    let type: MonsterType
    
}

extension MonsterItemViewModel {
    init(monster: Monster) {
        self.monster = monster
        self.name = monster.name ?? ""
        self.type = monster.type ?? .fire
    }
}
