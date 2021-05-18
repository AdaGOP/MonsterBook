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
        let mons1 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons2 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons3 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons4 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons5 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons6 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons7 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons8 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons9 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons10 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        let mons11 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        
        
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
