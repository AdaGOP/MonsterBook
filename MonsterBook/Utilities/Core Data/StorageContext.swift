//
//  StorageContext.swift
//  MonsterBook
//
//  Created by Handy Handy on 02/09/22.
//

import Foundation
import CoreData

public protocol Storable {
    init()
}

extension NSManagedObject: Storable {
}

protocol StorageContext {
    
    func create<CDEntity: Storable>(_ entity: CDEntity.Type, proccess: (_ object: CDEntity) -> Void) throws
    
    func fetch<CDEntity: Storable>(_ entity: CDEntity.Type, proccess: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?) throws -> [CDEntity]
    
    func update<CDEntity: Storable>(_ entity: CDEntity.Type, proccess: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?, update: (_ objects: [CDEntity]) -> Void) throws
    
    func delete<CDEntity: Storable>(_ entity: CDEntity.Type, proccess: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?, deletedObjects: ((_ objects: [CDEntity]) -> Void)?) throws
    
}

