//
//  FetchFavoritedMonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

protocol FetchFavoritedMonsterUseCaseProtocol {
    func execute() async -> Result<[Monster], Error>
}
