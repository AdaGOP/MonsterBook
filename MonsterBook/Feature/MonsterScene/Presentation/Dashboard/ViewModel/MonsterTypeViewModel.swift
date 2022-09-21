//
//  MonsterTypeViewModel.swift
//  MonsterBook
//
//  Created by Handy Handy on 19/09/22.
//

import Foundation

struct MonsterTypeViewModel: Equatable {
    let type: MonsterType
}

extension MonsterTypeViewModel {
    init(monster: Monster) {
        self.type = monster.type ?? .fire
    }
}
