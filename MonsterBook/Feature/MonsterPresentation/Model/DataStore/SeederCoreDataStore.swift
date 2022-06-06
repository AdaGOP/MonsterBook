//
//  SeederCoreDataStore.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation
import CoreData


struct SeederCoreDataStore {
    
    let context = CoreDataManager.shared.context
    
    func seedMonster() -> [Monster]?{
        
        let cdMonsterRequest: NSFetchRequest = CDMonster.fetchRequest()
        
        guard let cdMonsters = try? context.fetch(cdMonsterRequest) else { return nil }
        
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
