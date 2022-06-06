//
//  Seeder.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import Foundation

struct SeederStaticDataStore{
    
    func seedMonster() -> [Monster] {
        var arrMons = [Monster]()
        
        /// Create the monsters
        let mons1 = Monster(name: "Gloop1", age: 2, description: "Gloop is a very young monster", type: .air)
        let mons2 = Monster(name: "Gloop2", age: 2, description: "Gloop is a very young monster", type: .earth)
        let mons3 = Monster(name: "Gloop3", age: 2, description: "Gloop is a very young monster", type: .air)
        let mons4 = Monster(name: "Gloop4", age: 2, description: "Gloop is a very young monster", type: .air)
        let mons5 = Monster(name: "Gloop5", age: 2, description: "Gloop is a very young monster", type: .metal)
        let mons6 = Monster(name: "Gloop6", age: 2, description: "Gloop is a very young monster", type: .tree)
        let mons7 = Monster(name: "Gloop7", age: 2, description: "Gloop is a very young monster", type: .water)
        let mons8 = Monster(name: "Gloop8", age: 2, description: "Gloop is a very young monster", type: .water)
        let mons9 = Monster(name: "Gloop9", age: 2, description: "Gloop is a very young monster", type: .metal)
        let mons10 = Monster(name: "Gloop10", age: 2, description: "Gloop is a very young monster", type: .fire)
        let mons11 = Monster(name: "Gloop11", age: 2, description: "Gloop is a very young monster", type: .earth)
        
        
        /// Add the monsters that we created into array
        arrMons.append(mons1)
        arrMons.append(mons2)
        arrMons.append(mons3)
        arrMons.append(mons4)
        arrMons.append(mons5)
        arrMons.append(mons6)
        arrMons.append(mons7)
        arrMons.append(mons8)
        arrMons.append(mons9)
        arrMons.append(mons10)
        arrMons.append(mons11)
        
        return arrMons
    }
    
    
}
