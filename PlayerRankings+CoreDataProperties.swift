//
//  PlayerRankings+CoreDataProperties.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 21/5/24.
//
//

import Foundation
import CoreData


extension PlayerRankings {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PlayerRankings> {
        return NSFetchRequest<PlayerRankings>(entityName: "PlayerRankings")
    }

    @NSManaged public var playerName: String?
    @NSManaged public var playerScore: Int16
    @NSManaged public var playerColor: String?

}

extension PlayerRankings : Identifiable {

}
