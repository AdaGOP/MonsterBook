//
//  FetchMonsterByCategoryUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class FetchMonsterByCategoryUseCase: MonsterUseCase, FetchMonsterByCategoryUseCaseProtocol {
    
    func execute(type: MonsterType) async -> Result<[Monster], Error> {
        return await self.monsterRepository.getMonster(by: type)
    }
    
}
