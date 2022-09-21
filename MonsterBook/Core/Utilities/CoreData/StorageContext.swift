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

extension NSManagedObject: Storable {}

protocol StorageContext {
    
    func create<CDEntity: Storable>(_ entity: CDEntity.Type, process: (_ object: CDEntity) -> Void) async throws
    
    func fetch<CDEntity: Storable>(_ entity: CDEntity.Type, process: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?) async throws -> [CDEntity]
    
    func update<CDEntity: Storable>(_ entity: CDEntity.Type, process: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?, update: (_ objects: [CDEntity]) -> Void) async throws
    
    func delete<CDEntity: Storable>(_ entity: CDEntity.Type, process: ((_ fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Void)?, deletedObjects: ((_ objects: [CDEntity]) -> Void)?) async throws
    
}

