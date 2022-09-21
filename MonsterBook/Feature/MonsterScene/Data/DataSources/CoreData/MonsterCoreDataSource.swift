//
//  MonsterLocalDataSource.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class MonsterCoreDataSource: CoreDataSource, MonsterCoreDataSourceProtocol {
    
    func getMonsterCategories() async -> Result<[MonsterType], Error> {
        return .failure(CoreDataError.noData)
    }
    
    func getFavoritedMonster() async -> Result<[Monster], Error> {
        return .failure(CoreDataError.noData)
    }
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error> {
        return .failure(CoreDataError.noData)
    }
    
    func save(monster: Monster) async -> Result<Bool, Error> {
        return .failure(CoreDataError.noData)
    }
    
    func update(monster: Monster) async -> Result<Bool, Error> {
        return .failure(CoreDataError.noData)
    }
}
