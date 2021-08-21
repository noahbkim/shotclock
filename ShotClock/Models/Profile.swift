//
//  Profile+CoreDataClass.swift
//  shotclock
//
//  Created by Noah Kim on 8/20/21.
//  Copyright © 2021 Noah Kim. All rights reserved.
//
//

import Foundation
import CoreData

@objc(Profile)
public class Profile: NSManagedObject {

}

extension Profile {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Profile> {
        return NSFetchRequest<Profile>(entityName: "Profile")
    }

    @NSManaged public var name: String
    @NSManaged public var birthday: Date
    @NSManaged public var weight: Float
    @NSManaged public var sex: String
    @NSManaged public var about: String
    @NSManaged public var tabs: NSSet

}

// MARK: Generated accessors for tabs
extension Profile {

    @objc(addTabsObject:)
    @NSManaged public func addToTabs(_ value: Tab)

    @objc(removeTabsObject:)
    @NSManaged public func removeFromTabs(_ value: Tab)

    @objc(addTabs:)
    @NSManaged public func addToTabs(_ values: NSSet)

    @objc(removeTabs:)
    @NSManaged public func removeFromTabs(_ values: NSSet)

}
