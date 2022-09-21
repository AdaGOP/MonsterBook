//
//  MonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class MonsterUseCase {
    
    let monsterRepository: MonsterRepositoryProtocol
    
    init(monsterRepository: MonsterRepositoryProtocol) {
        self.monsterRepository = monsterRepository
    }
    
}
