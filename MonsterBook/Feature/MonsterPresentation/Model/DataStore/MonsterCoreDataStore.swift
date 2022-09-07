//
//  SeederCoreDataStore.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation
import CoreData


struct MonsterCoreDataStore: MonsterRepositoryDataStore {    
    
    let coreDataManager = CoreDataManager.shared
    
    func getMonsters() -> [Monster]? {
        
        guard let cdMonsters = try? coreDataManager.fetch(CDMonster.self, process: nil) else { return nil }
        
        let monsters: [Monster] = cdMonsters.compactMap { cdMonster -> Monster? in
            guard
                let type = cdMonster.type,
                let monsterType = MonsterType(rawValue: type)
            else{
                return nil
            }
            
            return Monster(
                name: cdMonster.name,
                age: Int(cdMonster.age),
                description: nil,
                type: monsterType
            )
        }
        return monsters
    }
}
