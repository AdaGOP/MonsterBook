//
//  MonsterRepository.swift
//  MonsterBook
//
//  Created by Handy Handy on 18/05/21.
//

import UIKit

struct MonsterRepository {
    
    var staticDataStore: SeederStaticDataStore
    var coreDataStore: SeederCoreDataStore?
    var networkDataStore: SeederNetworkDataStore?
    
    
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]
    
    var monsters: [Monster] {
        get {
            staticDataStore.seedMonster()
        }
    }
    
    init(staticDataStore: SeederStaticDataStore,
         coreDataStore: SeederCoreDataStore? = nil,
         networkDataStore: SeederNetworkDataStore? = nil) {
        
        self.staticDataStore = staticDataStore
        self.coreDataStore = coreDataStore
        self.networkDataStore = networkDataStore
    }
}

extension MonsterType {
    func getColor() -> UIColor {
        switch self {
        case .fire:
            return #colorLiteral(red: 0.7599080205, green: 0, blue: 0, alpha: 1)
        case .water:
            return #colorLiteral(red: 0.5810584426, green: 0.1285524964, blue: 0.5745313764, alpha: 1)
        case .earth:
            return #colorLiteral(red: 0.5787474513, green: 0.3215198815, blue: 0, alpha: 1)
        case .air:
            return #colorLiteral(red: 0, green: 0.05284054577, blue: 0.7854793072, alpha: 1)
        case .metal:
            return #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
        case .tree:
            return #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        }
    }
}
