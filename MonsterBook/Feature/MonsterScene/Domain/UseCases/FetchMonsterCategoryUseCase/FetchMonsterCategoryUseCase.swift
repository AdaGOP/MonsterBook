//
//  FetchMonsterCategoryUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class FetchMonsterCategoriesUseCase: MonsterUseCase, FetchMonsterCategoriesUseCaseProtocol {

    func execute() async -> Result<[MonsterType], Error> {
        return await self.monsterRepository.getMonsterCategories()
    }
}
