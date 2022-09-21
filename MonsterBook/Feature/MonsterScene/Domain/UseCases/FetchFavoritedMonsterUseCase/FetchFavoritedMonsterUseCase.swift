//
//  FetchFavoritedMonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class FetchFavoritedMonsterUseCase: MonsterUseCase, FetchFavoritedMonsterUseCaseProtocol {
    
    func execute() async -> Result<[Monster], Error> {
        return await self.monsterRepository.getFavoritedMonster()
    }
}
