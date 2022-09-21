//
//  CoreDataManager.swift
//  MonsterBook
//
//  Created by octavianus on 06/06/22.
//

import Foundation
import CoreData

enum CoreDataError: Error {
    case noData
}

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

extension CoreDataManager: StorageContext {
    func create<CDEntity>(_ entity: CDEntity.Type, process: (CDEntity) -> Void) async throws where CDEntity : Storable {
        process(NSEntityDescription.insertNewObject(forEntityName: "\(CDEntity.self)", into: context) as! CDEntity)
        try context.save()
    }
    
    func fetch<CDEntity>(_ entity: CDEntity.Type, process: ((NSFetchRequest<NSFetchRequestResult>) -> Void)?) async throws -> [CDEntity] where CDEntity : Storable {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "\(CDEntity.self)")
        process?(fetchRequest)
        
        return try context.fetch(fetchRequest) as! [CDEntity]
    }
    
    func update<CDEntity>(_ entity: CDEntity.Type, process: ((NSFetchRequest<NSFetchRequestResult>) -> Void)?, update: ([CDEntity]) -> Void) async throws where CDEntity : Storable {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "\(CDEntity.self)")
        process?(fetchRequest)
        
        update(try context.fetch(fetchRequest) as! [CDEntity])
        try context.save()
    }
    
    func delete<CDEntity>(_ entity: CDEntity.Type, process: ((NSFetchRequest<NSFetchRequestResult>) -> Void)?, deletedObjects: (([CDEntity]) -> Void)?) async throws where CDEntity : Storable {
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "\(CDEntity.self)")
        process?(fetchRequest)
        
        let objects = try context.fetch(fetchRequest) as! [CDEntity]
        deletedObjects?(objects)
        
        for object in objects {
            context.delete(object as! NSManagedObject)
        }
        
        try context.save()
    }
    
    
}
