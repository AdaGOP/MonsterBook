//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

protocol MonsterRepositoryDataStore{
    func getMonsters() -> [Monster]?
}

class MonsterRepository {
    
    var dynamicDataStore: MonsterRepositoryDataStore!
    var staticDataStore: MonsterStaticDataStore
    
    /*
    var coreDataStore: MonsterCoreDataStore?
    var networkDataStore: SeederNetworkDataStore?
    */
    
    var monsters: [Monster]?
    
    static let shared = MonsterRepository(staticDataStore: MonsterStaticDataStore())
    
    private init(staticDataStore: MonsterStaticDataStore) {
        self.staticDataStore = staticDataStore
    }
    
    public func addDataStore(_ dynamicDataStore: MonsterRepositoryDataStore){
        self.dynamicDataStore = dynamicDataStore
    }
    
    func getMonsters() -> [Monster] {
        if let unWrapMonsters = monsters { return unWrapMonsters }
        
        if dynamicDataStore != nil{
            monsters = dynamicDataStore?.getMonsters()
        }else{
            monsters = staticDataStore.getMonsters()
        }
        
        return monsters ?? []
    }
    
    func add(monster: Monster) {
        // Put your business logic here
        monsters?.append(monster)
    }
    
    func update(monster: Monster) {
        guard let index = monsters?.firstIndex(where: { $0.id == monster.id}) else { return }
        monsters?[index] = monster
    }
}
