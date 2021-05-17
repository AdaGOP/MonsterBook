//
//  Seeder.swift
//  MonsterBook
//
//  Created by Allicia Viona Sagi on 14/05/21.
//

import Foundation

class Seeder {
    
    func seedMonster() -> [Monster] {
        var arrMons = [Monster]()
        
        /// Create the monsters
        var mons1 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons2 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons3 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons4 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons5 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons6 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons7 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons8 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons9 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons10 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        var mons11 = Monster(name: "Gloop", age: 2, description: "Gloop is a very young monster")
        
        
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
        var mons1 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons2 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons3 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons4 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons5 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons6 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons7 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons8 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        var mons9 = WaterMonster(name: "Neptune", age: 2, description: "Neptune lives under the water.", scale: "Coarse")
        
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
        var mons1 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons2 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons3 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons4 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons5 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons6 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons7 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons8 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        var mons9 = FireMonster(name: "Lava", age: 5, description: "Lava is hot.", heat: "Super Hot")
        
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
        var mons1 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons2 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons3 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons4 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons5 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons6 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons7 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons8 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        var mons9 = GroundMonster(name: "Mole", age: 3, description: "Lives under ground. Very shy.", groundType: "Muddy")
        
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
        var mons1 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons2 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons3 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons4 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons5 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons6 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons7 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons8 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons9 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons10 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons11 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        var mons12 = AirMonster(name: "Windy", age: 2, description: "Windy loves to fly. ", speed: 100)
        
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
        var mons1 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons2 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons3 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons4 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons5 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons6 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons7 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons8 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons9 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        var mons10 = MetalMonster(name: "Harshy", age: 10, description: "Harshy is very harsh", color: "Brown")
        
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
        var mons1 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons2 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons3 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons4 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons5 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons6 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons7 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons8 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons9 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        var mons10 = ShadowMonster(name: "Darkness", age: 1, description: "Darkness comes when earth about to rain.", thickness: 10)
        
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
