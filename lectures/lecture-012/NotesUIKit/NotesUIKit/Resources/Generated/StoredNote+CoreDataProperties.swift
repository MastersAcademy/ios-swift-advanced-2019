//
//  StoredNote+CoreDataProperties.swift
//  
//
//  Created by Igor Kravchenko on 02.05.2020.
//
//

import Foundation
import CoreData


extension StoredNote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StoredNote> {
        return NSFetchRequest<StoredNote>(entityName: "StoredNote")
    }

    @NSManaged public var content: String?
    @NSManaged public var id: UUID?
    @NSManaged public var updatedAt: Date?

}
