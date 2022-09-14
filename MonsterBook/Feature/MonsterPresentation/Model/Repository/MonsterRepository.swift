//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit
import Foundation

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
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]
    
    var monsters: [Monster]?
    
    static let shared = MonsterRepository(staticDataStore: MonsterStaticDataStore())

    init(staticDataStore: MonsterStaticDataStore) {
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
    
extension MonsterType {
    func getColor() -> UIColor? {
        switch self {
        case .fire:
            return MBColor.red
        case .water:
            return MBColor.purple
        case .earth:
            return MBColor.brown
        case .air:
            return MBColor.blue
        case .metal:
            return MBColor.gray
        case .tree:
            return MBColor.green
        }
    }
    
    func getImage() -> UIImage {
        switch self {
        case .fire:
            return #imageLiteral(resourceName: "Monster Merah")
        case .water:
            return #imageLiteral(resourceName: "Monster Biru Muda")
        case .earth:
            return #imageLiteral(resourceName: "Monster Kuning Bulet")
        case .air:
            return #imageLiteral(resourceName: "Monster Ungu Bulet")
        case .metal:
            return #imageLiteral(resourceName: "Monster Hitam")
        case .tree:
            return #imageLiteral(resourceName: "Monster Pohon")
        }
    }
}
