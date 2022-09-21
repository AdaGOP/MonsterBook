//
//  UpdateMonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class UpdateMonsterUseCase: MonsterUseCase, UpdateMonsterUseCaseProtocol {
    
    func execute(monster: Monster) async -> Result<Bool, Error> {
        return await self.monsterRepository.update(monster: monster)
    }
    
}
