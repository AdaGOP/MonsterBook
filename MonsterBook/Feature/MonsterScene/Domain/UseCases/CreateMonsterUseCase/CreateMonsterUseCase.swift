//
//  CreateMonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class CreateMonsterUseCase: MonsterUseCase, CreateMonsterUseCaseProtocol {
    func execute(monster: Monster) async -> Result<Bool, Error> {
        return await self.monsterRepository.save(monster: monster)
    }
}
