//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

enum MonsterType: String {
    case fire = "Fire"
    case water = "Water"
    case earth = "Earth"
    case air = "Air"
    case metal = "Metal"
    case tree = "Tree"
    
    func getColor() -> UIColor {
        switch self {
        case .fire:
            return .red
        case .water:
            return .purple
        case .earth:
            return .brown
        case .air:
            return .blue
        case .metal:
            return .gray
        case .tree:
            return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
    }
}

struct MonsterRepository {
    
    var staticDataStore: SeederStaticDataStore?
    var coreDataStore: SeederCoreDataStore?
    var networkDataStore: SeederNetworkDataStore?
    
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]

    init(staticDataStore: SeederStaticDataStore,
         coreDataStore: SeederCoreDataStore? = nil,
         networkDataStore: SeederNetworkDataStore? = nil) {
        
        self.staticDataStore = staticDataStore
        self.coreDataStore = coreDataStore
        self.networkDataStore = networkDataStore
    }
    
    func getMonsters() -> [Monster] {
        return staticDataStore?.seedMonster() ?? []
    }
    
}
