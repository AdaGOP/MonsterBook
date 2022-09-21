//
//  MonsterMockDataSource.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

class MonsterMockDataSource: MonsterMockDataSourceProtocol {
    
    var monsters = MonsterMock.data
    
    func getMonsterCategories() async -> Result<[MonsterType], Error> {
        return .success(MonsterType.allCases)
    }
    
    func getFavoritedMonster() async -> Result<[Monster], Error> {
        return .success(monsters.filter({ monster in
            monster.isFavorite
        }))
    }
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error> {
        return .success(monsters.filter({ monster in
            monster.type == category
        }))
    }
    
    func save(monster: Monster) async -> Result<Bool, Error> {
        monsters.append(monster)
        return .success(true)
    }
    
    func update(monster: Monster) async -> Result<Bool, Error> {
        guard let index = monsters.firstIndex(where: { $0.id == monster.id}) else {
            return .failure(MonsterMock.MockError.monsterNotFound)
        }
        monsters[index] = monster
        return .success(true)
    }
    
}
