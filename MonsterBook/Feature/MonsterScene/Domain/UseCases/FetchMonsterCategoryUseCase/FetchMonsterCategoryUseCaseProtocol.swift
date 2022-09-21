//
//  FetchMonsterCategoryUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

protocol FetchMonsterCategoriesUseCaseProtocol {
    func execute() async -> Result<[MonsterType], Error>
}
