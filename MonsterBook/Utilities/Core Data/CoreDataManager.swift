//
//  CoreDataManager.swift
//  MonsterBook
//
//  Created by octavianus on 06/06/22.
//

import Foundation
import CoreData

class CoreDataManager{
    
    static let shared = CoreDataManager()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    private init(){
        container = NSPersistentContainer(name: "MonsterBookDataModel")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        context = container.viewContext
    }
}
