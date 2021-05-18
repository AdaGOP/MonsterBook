//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import Foundation

struct MonsterRepository {
    
    let staticDataStore: SeederStaticDataStore
    let coreDataStore: SeederCoreDataStore
    let networkDataStore: SeederNetworkDataStore

    init(staticDataStore: SeederStaticDataStore,
         coreDataStore: SeederCoreDataStore,
         networkDataStore: SeederNetworkDataStore) {
        
        self.staticDataStore = staticDataStore
        self.coreDataStore = coreDataStore
        self.networkDataStore = networkDataStore
    }
    
    func getMonsters() -> [Monster] {
        return staticDataStore.seedMonster()
    }
    
}
