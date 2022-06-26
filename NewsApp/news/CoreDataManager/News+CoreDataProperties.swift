//
//  News+CoreDataProperties.swift
//  news
//
//  Created by Vitya Mandryk on 26.06.2022.
//
//

import Foundation
import CoreData


extension News {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<News> {
        return NSFetchRequest<News>(entityName: "News")
    }

    @NSManaged public var title: String?
    @NSManaged public var overview: String?
    @NSManaged public var postedBy: String?
    @NSManaged public var author: String?

}
