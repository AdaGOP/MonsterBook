//
//  MonsterFirstEvolutionTest.swift
//  MonsterBookTests
//
//  Created by octavianus on 06/06/22.
//

import XCTest
@testable import MonsterBook

class MonsterTest: XCTestCase {

    func testEvolution(){
        let airMonster = Monster(name: "Okat", age: 12, description: "", type: .air)
        let airMonsterEvo = airMonster.evolve()
        
        XCTAssert(airMonsterEvo?.numberOfClaw == 1)
        
        let fireMonster = Monster(name: "charizard", age: 12, description: "", type: .fire)
        let fireMonsterEvo = fireMonster.evolve()
        
        XCTAssert(fireMonsterEvo?.numberOfClaw == 5)
        
    }

}
