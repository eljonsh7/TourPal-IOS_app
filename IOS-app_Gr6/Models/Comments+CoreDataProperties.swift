//
//  Comments+CoreDataProperties.swift
//  IOS-app_Gr6
//
//  Created by Beslind Mema on 28.2.24.
//
//

import Foundation
import CoreData


extension Comments {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Comments> {
        return NSFetchRequest<Comments>(entityName: "Comments")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var comment_content: String?
    @NSManaged public var created_at: Date?
    @NSManaged public var post: Posts?
    @NSManaged public var user: Users?

}

extension Comments : Identifiable {

}
