//
//  Tab+CoreDataClass.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Tab)
public class Tab: NSManagedObject {

}

extension Tab {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tab> {
        return NSFetchRequest<Tab>(entityName: "Tab")
    }

    @NSManaged public var about: String?
    @NSManaged public var created: Date?
    @NSManaged public var open: Bool
    @NSManaged public var profile: Profile?
    @NSManaged public var drinks: Drink?

}
