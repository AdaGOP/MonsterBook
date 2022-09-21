//
//  MonsterLocalDataSource.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/09/22.
//

import Foundation

protocol MonsterCoreDataSourceProtocol {
    
    func getMonsterCategories() async -> Result<[MonsterType], Error>
    
    func getFavoritedMonster() async -> Result<[Monster], Error>
    
    func getMonster(by category: MonsterType) async -> Result<[Monster], Error>
    
    func save(monster: Monster) async -> Result<Bool, Error>
    
    func update(monster: Monster) async -> Result<Bool, Error>
    
}
