//
//  InitialScreenController.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 10/5/24.
//

import UIKit

class InitialScreenController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet var playerNames: [UILabel]!
    @IBOutlet var playerScores: [UILabel]!
    @IBOutlet var playerColorImages: [UIImageView]!
    
    var llistaJugs:[PlayerRankings] = []
    func ordena(llistaOrd:[PlayerRankings])->[PlayerRankings]{
        var llista:[PlayerRankings] = []
        llista = llistaOrd
        for i in 0..<llista.count{
            for j in i+1..<llista.count{
                if llista[i].playerScore < llista[j].playerScore{
                    llista.swapAt(i, j)
                }
            }
        }
        
        return llista
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var llistaJugs = PlayerRankings.loadJugsData(context:context)
        
        
        
        if llistaJugs.count <= 0 {
            print("HOla")
            for _ in 0..<playerNames.count{
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
                print("player")
                llistaJugs.append(player)
            }
        }
        
        if llistaJugs.count>0{
            let llistaOrdenada = ordena(llistaOrd:llistaJugs)
            
            print(llistaJugs.count)
            for i in 0..<playerNames.count{
                playerNames[i].text = llistaOrdenada[i].playerName
                
                playerScores[i].text = String(llistaOrdenada[i].playerScore)+" points"
                if (llistaOrdenada[i].playerColor == "red"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.75, green: 0, blue: 0.2, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "blue"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0, green: 0.1, blue: 0.9, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "green"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0, green: 0.65, blue: 0, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "yellow"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "orange"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.9, green: 0.4, blue: 0, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "purple"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.8, green: 0, blue: 0.9, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "aquamarine"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0, green: 0.6, blue: 0.4, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "black"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
                }else if(llistaOrdenada[i].playerColor == "lightBlue"){
                    playerColorImages[i].backgroundColor = UIColor(red: 0.25, green: 1, blue: 1, alpha: 1)
                    
                }
            }
            print("\n\nllista")
            print(llistaJugs)
            print("\n\n llistaord")
            print(llistaOrdenada)
        }
        

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "onePlayer"{
            if let colorScreen = segue.destination as? ViewControllerColorSelect {
                colorScreen.setNumPlayers(totalPlayers: 1)
            }
        }
        if segue.identifier == "twoPlayers"{
            if let colorScreen = segue.destination as? ViewControllerColorSelect {
                colorScreen.setNumPlayers(totalPlayers: 2)
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
