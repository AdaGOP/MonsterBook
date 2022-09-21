//
//  FetchMonsterByCategorizedUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

protocol FetchMonsterByCategoryUseCaseProtocol {
    func execute(type: MonsterType) async -> Result<[Monster], Error>
}
