//
//  PlayerRankings+CoreDataClass.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 21/5/24.
//
//

import Foundation
import CoreData

public class PlayerRankings: NSManagedObject {
    static func addPlayerToRanking(context:NSManagedObjectContext,playerName:String,playerImage:String,playerScore:Int16) -> PlayerRankings{
        let play = NSEntityDescription.insertNewObject(forEntityName: "PlayerRankings", into: context) as! PlayerRankings
        play.playerName = playerName
        play.playerColor = playerImage
        play.playerScore = playerScore
        do{
            try context.save()
            return play
        }catch let error as NSError{
            fatalError("Error insert: \(error), \(error.userInfo)")
        }
    }
    
    
    static func loadJugsData(context:NSManagedObjectContext) -> [PlayerRankings]{
        let todoFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "PlayerRankings")
        do{
            let ranking = try context.fetch(todoFetch) as! [PlayerRankings]
            return ranking
            
        }catch let error as NSError{
            fatalError("ERROR Fetch: \(error), \(error.userInfo)")
        }
    }
}
