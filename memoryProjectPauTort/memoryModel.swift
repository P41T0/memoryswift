//
//  memoryModel.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 2/5/24.
//

import Foundation
import UIKit


class memoryGameModel{
    var player1 = player()
    var player2 = player()
    var player2Human:Bool = false
    var playerTurn:Int = 1
    var card1:Int = 0
    var card2:Int = 0
    var numCardsSelected:Int = 0
    var gameNumArray : [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    var playerDiscoveredPair : [String] = ["","","","","","","","","","","","","","","","","","","","","","","","","",]
    var numJugs = 1
    func getGameNumArray()->([Int]){
        return gameNumArray
    }
    func getPlayerDiscoveredPair()->([String]){
        return playerDiscoveredPair
    }
    func cardDiscovered(position:Int){
        if gameNumArray[position]==0{
            if playerTurn == 1{
                playerDiscoveredPair[position] = "player1"
                player1.increaseScore()
            }else if playerTurn == 2{
                playerDiscoveredPair[position] = "player2"
                player2.increaseScore()
            }
            
        }
        else{
            numCardsSelected += 1
            if numCardsSelected == 1{
                playerDiscoveredPair[position]="gray"
                card1 = position
            }else if numCardsSelected == 2{
                card2 = position
                numCardsSelected = 0
                if(gameNumArray[card1] == gameNumArray[card2]){
                    if playerTurn == 1{
                        player1.increaseScore()
                        playerDiscoveredPair[card1] = "player1"
                        playerDiscoveredPair[card2] = "player1"
                    }else if playerTurn == 2{
                        player2.increaseScore()
                        playerDiscoveredPair[card1] = "player2"
                        playerDiscoveredPair[card2] = "player2"
                        
                    }
                }else{
                    playerDiscoveredPair[card1] = "flipCard"
                    playerDiscoveredPair[card2] = "flipCard"
                    
                    if(playerTurn == 1){
                        playerTurn = 2
                    }else if (playerTurn == 2){
                        playerTurn = 1
                    }
                }
            }
        }
    }
    func setPlayers(p1:player,p2:player,p2Bot:Bool){
        player2Human = p2Bot
        player1 = p1
        print(player1.getName())
        player2 = p2
    }
    func returnPlayers()->(player, player, Bool){
        return(player1,player2,player2Human)
    }
    
    func flippedImage(position:Int){
        playerDiscoveredPair[position]=""
    }

    func getPlayerTurn()->Int{
        return playerTurn
    }
    func iniciaPartida()->[Int]{
        playerDiscoveredPair = ["","","","","","","","","","","","","","","","","","","","","","","","","",]
        player1.setScore(score: 0)
        player2.setScore(score: 0)
        playerTurn = Int.random(in: 1...2)
        numCardsSelected = 0
        gameNumArray = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
        var i = 1
        var j = 0
        var numCardsPositioned = 0
        var cardPosition = 0
        
        while j<gameNumArray.count-1{
            cardPosition = Int.random(in:0...gameNumArray.count-1)
            
            if (gameNumArray[cardPosition]==0){
                gameNumArray[cardPosition]=i
                j+=1
                numCardsPositioned+=1
                if numCardsPositioned == 2{
                    numCardsPositioned = 0
                    i+=1
                }
                
            }
        }
        
        return gameNumArray
    }

}

class player{
    var name:String = ""
    var color:String = "white"
    var playerScore:Int16 = 0
    func setName(PlayerName:String){
        self.name = PlayerName
    }
    func getName()->String{
        return self.name
    }
    func setScore(score:Int16){
        self.playerScore = score
    }
    func increaseScore(){
        self.playerScore += 1
    }
    func getScore()->Int16{
        return self.playerScore
    }
    func setColor(pColor:String){
        self.color = pColor
    }
    func getColor()->String{
        return self.color
    }
}
