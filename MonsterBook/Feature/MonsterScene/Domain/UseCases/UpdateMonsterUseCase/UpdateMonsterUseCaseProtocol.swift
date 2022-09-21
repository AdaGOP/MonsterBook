//
//  UpdateMonsterUseCase.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

protocol UpdateMonsterUseCaseProtocol {
    func execute(monster: Monster) async -> Result<Bool, Error>
}
