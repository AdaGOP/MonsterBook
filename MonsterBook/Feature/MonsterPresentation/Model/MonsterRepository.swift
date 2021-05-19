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
    func getColor() -> UIColor? {
        switch self {
        case .fire:
            return UIColor(named: "MBRed")
        case .water:
            return UIColor(named: "MBPurple")
        case .earth:
            return UIColor(named: "MBBrown")
        case .air:
            return UIColor(named: "MBBlue")
        case .metal:
            return UIColor(named: "MBGray")
        case .tree:
            return UIColor(named: "MBGreen")
        }
    }
}
