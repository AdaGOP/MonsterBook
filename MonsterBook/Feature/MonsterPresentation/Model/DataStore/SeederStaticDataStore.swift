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
    
    func seedWaterMonster() -> [WaterMonster] {
        var arrMons = [WaterMonster]()
        
        /// Create the monsters
        let mons1 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons2 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons3 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons4 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons5 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons6 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons7 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons8 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        let mons9 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        
        /// Add monsters to the list
        arrMons.append(mons1)
        arrMons.append(mons2)
        arrMons.append(mons3)
        arrMons.append(mons4)
        arrMons.append(mons5)
        arrMons.append(mons6)
        arrMons.append(mons7)
        arrMons.append(mons8)
        arrMons.append(mons9)
        
        
        return arrMons
    }
    
    func seedFireMonster() -> [FireMonster] {
        var arrMons = [FireMonster]()
        
        /// Create monsters
        let mons1 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons2 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons3 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons4 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons5 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons6 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons7 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons8 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        let mons9 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        
        /// Add monsters to array
        arrMons.append(mons1)
        arrMons.append(mons2)
        arrMons.append(mons3)
        arrMons.append(mons4)
        arrMons.append(mons5)
        arrMons.append(mons6)
        arrMons.append(mons7)
        arrMons.append(mons8)
        arrMons.append(mons9)
        
        return arrMons
    }
    
    func seedGroundMonster() -> [GroundMonster] {
        var arrMons = [GroundMonster]()
        
        /// Create Monster
        let mons1 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons2 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons3 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons4 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons5 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons6 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons7 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons8 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        let mons9 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        
        /// Add monsters to array
        arrMons.append(mons1)
        arrMons.append(mons2)
        arrMons.append(mons3)
        arrMons.append(mons4)
        arrMons.append(mons5)
        arrMons.append(mons6)
        arrMons.append(mons7)
        arrMons.append(mons8)
        arrMons.append(mons9)
        
        return arrMons
    }
    
    func seedAirMonster() -> [AirMonster] {
        var arrMons = [AirMonster]()
        
        /// Create monster
        let mons1 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons2 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons3 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons4 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons5 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons6 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons7 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons8 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons9 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons10 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons11 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        let mons12 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        
        /// Add monster to array
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
        arrMons.append(mons12)
        
        return arrMons
    }
    
    func seedMetalMonster() -> [MetalMonster] {
        var arrMons = [MetalMonster]()
        
        /// Create monsters
        let mons1 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons2 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons3 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons4 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons5 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons6 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons7 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons8 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons9 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        let mons10 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        
        /// Add monsters to array
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
        
        return arrMons
    }
    
    func seedShadowMonster() -> [ShadowMonster] {
        var arrMons = [ShadowMonster]()
        
        /// Create monsters
        let mons1 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons2 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons3 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons4 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons5 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons6 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons7 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons8 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons9 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        let mons10 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        
        /// Add monsters to array
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
        
        
        return arrMons
    }
}
