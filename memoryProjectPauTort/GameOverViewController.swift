//
//  GameOverViewController.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 21/5/24.
//

import UIKit

class GameOverViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    var llistaJugs : [PlayerRankings] = []
    var llistaOrdenada:[PlayerRankings] = []
    var p1:player = player()
    var p2:player = player()
    var notabot:Bool = false
    @IBOutlet weak var winnerText: UILabel!
    @IBOutlet weak var secondText: UILabel!
    var winner:String = ""
    var second:String = ""
    var p1Score:Int16 = 0
    var p1Color = ""
    var p1Name = ""
    var p2Score:Int16 = 0
    var p2Color = ""
    var p2Name = ""
    var llista:[PlayerRankings] = []
    
    @IBAction func PlayAgainPressed(_ sender: Any) {
        
    }
    func ordena(llistaOrd:[PlayerRankings])->[PlayerRankings]{
        
        llista = llistaOrd
        for i in 0..<llista.count{
            for j in i+1..<llista.count{
                if llista[i].playerScore < llista[j].playerScore{
                    llista.swapAt(i, j)
                }
            }
        }

        if (llista.count > 5){
            while llista.count > 5{
                let jug = llista[5]
                context.delete(jug)
                llista.remove(at: 5)
                do{
                    try context.save()
                }
                catch let error as NSError{
                    fatalError("Error insert: \(error), \(error.userInfo)")
                }
            }
        }
        
        
        return llista
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        llistaJugs = PlayerRankings.loadJugsData(context: context)
        let jugador1 = PlayerRankings.addPlayerToRanking(context: context, playerName: p1Name, playerImage: p1Color, playerScore: p1Score)

        let jugador2 = PlayerRankings.addPlayerToRanking(context: context, playerName: p2Name, playerImage: p2Color, playerScore: p2Score)
        llistaJugs.append(jugador1)
        llistaJugs.append(jugador2)

        if llistaJugs.count < 5 {
            for _ in llistaJugs.count..<5{
                var playerColor = ""
                let colorRandom = Int.random(in: 0...8)
                if colorRandom == 1{
                    playerColor = "red"
                }else if(colorRandom == 2){
                    playerColor = "blue"
                }else if(colorRandom == 3){
                    playerColor = "green"
                }else if(colorRandom == 4){
                    playerColor = "purple"
                }else if(colorRandom == 5){
                    playerColor = "yellow"
                }else if(colorRandom == 6){
                    playerColor = "aquamarine"
                }else if(colorRandom == 7){
                    playerColor = "lightBlue"
                }
                else{
                    playerColor = "black"
                }
                let player = PlayerRankings.addPlayerToRanking(context: context, playerName: "Player", playerImage: playerColor, playerScore: 0)
                
                llistaJugs.append(player)
            }
        }

        llistaOrdenada = ordena(llistaOrd: llistaJugs)
        print("\n\nllista")
        print(llistaJugs)
        print("\n\n llistaord")
        print(llistaOrdenada)
            
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerText.text = winner
        secondText.text = second

        // Do any additional setup after loading the view.
    }
    
    func getPlayer(player1:player,player2:player, p2Human: Bool){
        
        p1 = player1
        p2 = player2
        notabot = p2Human
        p1Score = p1.getScore()
        p1Color = p1.getColor()
        p1Name = p1.getName()
        p2Score = p2.getScore()
        p2Color = p2.getColor()
        p2Name = p2.getName()
        if p1Score>p2Score{
            winner = "1st: "+p1Name+" ("+String(p1Score)+" points)"
            if notabot == true{
                second = "2nd: "+p2Name+" ("+String(p2Score)+" points)"
            }else{
                second = "2nd: "+p2Name+"(bot)  ("+String(p2Score)+" points)"
            }
            
        }else if p1Score<p2Score{
            second = "2nd: "+p1Name+" ("+String(p1Score)+" points)"
            if notabot == true{
                winner = "1st: "+p2Name+" ("+String(p2Score)+" points)"
            }else{
                winner = "1st: "+p2Name+" (bot)  ("+String(p2Score)+" points)"
            }

        }else{
            winner = "1st: "+p1Name+" ("+String(p1Score)+" points)"
            if notabot == true{
                second = "1st: "+p2Name+" ("+String(p2Score)+" points)"
            }else{
                second = "1st: "+p2Name+" (bot)  ("+String(p2Score)+" points)"
            }
            
        }
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playAgainSegue"{
            if let gameController = segue.destination as? ViewController{
                gameController.startGame(player1Col: p1Color, player2Col: p2Color, player1Nom: p1Name, player2Nom: p2Name, p2Human: notabot)
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
