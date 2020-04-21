//
//  StoredNote+CoreDataProperties.swift
//  NotesUIKit
//
//  Created by Igor Kravchenko on 20.04.2020.
//  Copyright © 2020 Igor Kravchenko. All rights reserved.
//
//

import Foundation
import CoreData


extension StoredNote {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StoredNote> {
        return NSFetchRequest<StoredNote>(entityName: "StoredNote")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var content: String?
    @NSManaged public var updatedAt: Date?

}
