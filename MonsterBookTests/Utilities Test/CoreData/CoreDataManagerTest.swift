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
    
    func testEmptyReadData() throws {
        let expectedResult: [CDMonster] = []
        //
        let monsters = try coreDataManager.fetch(CDMonster.self, process: { request in
            request.predicate = nil
            request.sortDescriptors = []
        })
        print("monsters: \(monsters)")
        //
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters == expectedResult)
    }
    
    func testAddData() throws {
        let expectedResult = monster
        //
        try coreDataManager.create(CDMonster.self, process: { newMonster in
            newMonster.name = expectedResult?.name
            newMonster.type = expectedResult?.type?.rawValue
            newMonster.age = Int64(expectedResult?.age ?? 0)
            //
            XCTAssertNotNil(newMonster, "Item should not be nil")
            XCTAssertNotNil(newMonster.age, "Item should not be nil")
            XCTAssertTrue(newMonster.name == expectedResult?.name)
        })
    }
    
    func testReadData() throws {
        let expectedResult = monster
        //
        let monsters = try coreDataManager.fetch(CDMonster.self, process: { request in
            request.predicate = nil
            request.sortDescriptors = []
        })
        print("monsters: \(monsters)")
        //
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters.first?.name == expectedResult?.name)
    }
    
    func testDeleteAllData() throws {
        let expectedResult: [CDMonster] = []
        //
        try coreDataManager.delete(CDMonster.self, process: nil, deletedObjects: nil)
        //
        let monsters = try coreDataManager.fetch(CDMonster.self, process: nil)
        XCTAssertNotNil(monsters, "Item should not be nil")
        XCTAssertTrue(monsters == expectedResult)
    }
    
}
