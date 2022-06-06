//
//  MonsterRepositoryTests.swift
//  MonsterBookTests
//
//  Created by octavianus on 06/06/22.
//

import XCTest
@testable import MonsterBook

class MonsterRepositoryTests: XCTestCase {
    
    var monsterRepo = MonsterRepository.shared

    override func setUpWithError() throws {
        monsterRepo.getMonsters()
    }

    func testDataAvailbility() {
        // Check for nil value
        guard let monsters = monsterRepo.monsters else {
            XCTAssertTrue(monsterRepo.monsters != nil, "Monsters data are nil")
            return
        }
        
        // Check data exists
        XCTAssert(!monsters.isEmpty, "Monsters data are empty")
    }
    
    func testDataAdd(){
        guard let monsters = monsterRepo.monsters else {
            XCTAssertTrue(monsterRepo.monsters != nil, "Monsters data are nil")
            return
        }
        
        let numberOfDataBefore = monsters.count
        let nameToCheck = "New Monster"
        
        // Add new monster
        monsterRepo.add(monster: Monster(name: nameToCheck, age: 12, description: "New", type: .air))
        
        // Check to make sure data increased by 1
        XCTAssert(numberOfDataBefore + 1 == monsterRepo.monsters?.count)
        
        // Check if the added data are exists
        XCTAssert(monsterRepo.monsters?.last?.name == nameToCheck)
    }

}
