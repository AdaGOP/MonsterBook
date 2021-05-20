//
//  Seeder.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import Foundation

struct SeederStaticDataStore{
    
    let monsterType: [MonsterType] = [
        .fire, .water, .earth, .air, .metal, .tree
    ]
    
    func seedMonster() -> [Monster] {
        var arrMons = [Monster]()
        
        /// Create the monsters
        let mons1 = Monster(name: "Gloop1", age: 2, description: "Gloop is a very young monster", type: .air, image: #imageLiteral(resourceName: "Monster Merah"))
        let mons2 = Monster(name: "Gloop2", age: 2, description: "Gloop is a very young monster", type: .earth, image: #imageLiteral(resourceName: "Monster Kuning Bulet"))
        let mons3 = Monster(name: "Gloop3", age: 2, description: "Gloop is a very young monster", type: .air, image: #imageLiteral(resourceName: "Monster Puppy"))
        let mons4 = Monster(name: "Gloop4", age: 2, description: "Gloop is a very young monster", type: .air, image: #imageLiteral(resourceName: "Monster Puppy"))
        let mons5 = Monster(name: "Gloop5", age: 2, description: "Gloop is a very young monster", type: .metal, image: #imageLiteral(resourceName: "Monster Hitam"))
        let mons6 = Monster(name: "Gloop6", age: 2, description: "Gloop is a very young monster", type: .tree, image: #imageLiteral(resourceName: "Monster Pohon"))
        let mons7 = Monster(name: "Gloop7", age: 2, description: "Gloop is a very young monster", type: .water, image: #imageLiteral(resourceName: "Monster Biru Muda"))
        let mons8 = Monster(name: "Gloop8", age: 2, description: "Gloop is a very young monster", type: .water, image: #imageLiteral(resourceName: "Monster Biru Muda"))
        let mons9 = Monster(name: "Gloop9", age: 2, description: "Gloop is a very young monster", type: .metal, image: #imageLiteral(resourceName: "Monster Hitam"))
        let mons10 = Monster(name: "Gloop10", age: 2, description: "Gloop is a very young monster", type: .fire, image: #imageLiteral(resourceName: "Monster Merah"))
        let mons11 = Monster(name: "Gloop11", age: 2, description: "Gloop is a very young monster", type: .earth, image: #imageLiteral(resourceName: "Monster Kuning Bulet"))
        
        
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
