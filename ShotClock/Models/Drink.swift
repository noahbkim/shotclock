//
//  Drink+CoreDataClass.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Drink)
public class Drink: NSManagedObject {

}

extension Drink {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Drink> {
        return NSFetchRequest<Drink>(entityName: "Drink")
    }

    @NSManaged public var volume: Float
    @NSManaged public var alcohol: Float
    @NSManaged public var consumed: Date?
    @NSManaged public var tab: Tab?

}

