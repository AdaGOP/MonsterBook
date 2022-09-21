//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

class MonsterRepository: MonsterRepositoryProtocol {
    
    static let shared = MonsterRepository()
    
    private let monsterMockDataSource: MonsterMockDataSourceProtocol = MonsterMockDataSource()
    private let monsterCoreDataSource: MonsterCoreDataSourceProtocol = MonsterCoreDataSource(coreDataManager: CoreDataManager.shared)
    
    func getMonsterCategories() async -> Result<[MonsterType], Error> {
        let coreDataSourceResult = await monsterCoreDataSource.getMonsterCategories()
        switch coreDataSourceResult {
        case .success(_):
            return coreDataSourceResult
        case .failure(_):
            return await monsterMockDataSource.getMonsterCategories()
        }
    }
    
    func getFavoritedMonster() async -> Result<[Monster], Error> {
        let coreDataSourceResult = await monsterCoreDataSource.getFavoritedMonster()
        switch coreDataSourceResult {
        case .success(_):
            return coreDataSourceResult
        case .failure(_):
            return await monsterMockDataSource.getFavoritedMonster()
        }
    }
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error> {
        let coreDataSourceResult = await monsterCoreDataSource.getMonster(by: category)
        switch coreDataSourceResult {
        case .success(_):
            return coreDataSourceResult
        case .failure(_):
            return await monsterMockDataSource.getMonster(by: category)
        }
    }
    
    func save(monster: Monster) async -> Result<Bool, Error> {
        let coreDataSourceResult = await monsterCoreDataSource.save(monster: monster)
        switch coreDataSourceResult {
        case .success(_):
            return coreDataSourceResult
        case .failure(_):
            return await monsterMockDataSource.save(monster: monster)
        }
    }
    
    func update(monster: Monster) async -> Result<Bool, Error> {
        let coreDataSourceResult = await monsterCoreDataSource.update(monster: monster)
        switch coreDataSourceResult {
        case .success(_):
            return coreDataSourceResult
        case .failure(_):
            return await monsterMockDataSource.update(monster: monster)
        }
    }
}
