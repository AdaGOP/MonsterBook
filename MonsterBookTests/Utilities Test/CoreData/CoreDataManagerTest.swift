//
//  CoreDataManagerTest.swift
//  MonsterBookTests
//
//  Created by Handy Handy on 07/09/22.
//

import XCTest
@testable import MonsterBook
import CoreData

class CoreDataManagerTest: XCTestCase {
    
    var coreDataManager: CoreDataManager!
    var monster: Monster!
    
    override func setUpWithError() throws {
        coreDataManager = CoreDataManager.shared
        //
        monster = Monster(name: "Handy", age: 12, description: "Description", type: .air)
    }
    
    override func tearDownWithError() throws {
        coreDataManager = nil
        monster = nil
    }
    
    func testEmptyReadData() async throws {
        let expectedResult: [MonsterMO] = []
        //
        let monsters = try await coreDataManager.fetch(MonsterMO.self, process: { request in
            request.predicate = nil
            request.sortDescriptors = []
        })
        print("monsters: \(monsters)")
        //
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters == expectedResult)
    }
    
    func testAddData() async throws {
        let expectedResult = monster
        //
        try await coreDataManager.create(MonsterMO.self, process: { newMonster in
            newMonster.name = expectedResult?.name
            newMonster.type = expectedResult?.type?.rawValue
            newMonster.age = Int64(expectedResult?.age ?? 0)
            //
            XCTAssertNotNil(newMonster, "Item should not be nil")
            XCTAssertNotNil(newMonster.age, "Item should not be nil")
            XCTAssertTrue(newMonster.name == expectedResult?.name)
        })
    }
    
    func testReadData() async throws {
        let expectedResult = monster
        //
        let monsters = try await coreDataManager.fetch(MonsterMO.self, process: { request in
            request.predicate = nil
            request.sortDescriptors = []
        })
        print("monsters: \(monsters)")
        //
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters.first?.name == expectedResult?.name)
    }
    
    func testDeleteAllData() async throws {
        let expectedResult: [MonsterMO] = []
        //
        try await coreDataManager.delete(MonsterMO.self, process: nil, deletedObjects: nil)
        //
        let monsters = try await coreDataManager.fetch(MonsterMO.self, process: nil)
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters == expectedResult)
    }
    
}
