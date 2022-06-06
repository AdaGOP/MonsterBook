//
//  MonsterFirstEvolutionTest.swift
//  MonsterBookTests
//
//  Created by octavianus on 06/06/22.
//

import XCTest
@testable import MonsterBook

class MonsterTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testEvolution(){
        let airMonster = Monster(name: "Okat", age: 12, description: "", type: .air)
        let airMonsterEvo = airMonster.evolve()
        
        XCTAssert(airMonsterEvo?.numberOfClaw == 1)
        
        let fireMonster = Monster(name: "Okat", age: 12, description: "", type: .fire)
        let fireMonsterEvo = airMonster.evolve()
        
        XCTAssert(airMonsterEvo?.numberOfClaw == 5)
        
    }

}
