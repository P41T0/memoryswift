//
//  ViewControllerColorSelect.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 3/5/24.
//

import UIKit

class ViewControllerColorSelect: UIViewController {
    @IBOutlet weak var playerName: UITextField!
    var actualNumPlayer:Int = 1
    var totalNumPlayers:Int = 1
    var playerTurn:Int = 1
    var player1Name:String = "Player 1"
    var player2Name:String = "Player 2"
    var player2Human:Bool = false
    var player1Color:String = "red"
    var player2Color:String = "blue"

    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var playerText: UILabel!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    @IBOutlet weak var aquamarineButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    @IBOutlet weak var lightBlueButton: UIButton!
    @IBAction func introKeyPressed(_ sender: Any) {
        playerName.resignFirstResponder()
        var pName = playerName.text!.trimmingCharacters(in: CharacterSet())
        if (playerTurn == 1){
            if pName.count > 0 && pName.count < 10{
                player1Name = pName
            
            }else if(pName.count >= 10){
                pName = String(pName.prefix(10))
                playerName.text = pName
                player1Name = pName
            }
            else{
                player1Name = "Player 1"
            }
            
        }else if(playerTurn == 2){
            if pName.count > 0 && pName.count < 10 {
                player2Name  = pName
            }else if(pName.count >= 10){
                pName = String(pName.prefix(10))
                playerName.text = pName
                player2Name  = pName
            }
            else{
                player2Name = "Player 2"
            }
        }
        
    }
    @IBAction func greenButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "green"
        }else if playerTurn == 2{
            player2Color = "green"
        }
        
    }
    @IBAction func yellowButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "yellow"
        }else if playerTurn == 2{
            player2Color = "yellow"
        }
    }
    @IBAction func redButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "red"
        }else if playerTurn == 2{
            player2Color = "red"
        }
    }
    @IBAction func orangeButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "orange"
        }else if playerTurn == 2{
            player2Color = "orange"
        }
    }
    @IBAction func purpleButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "purple"
        }else if playerTurn == 2{
            player2Color = "purple"
        }
    }
    @IBAction func blueButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "blue"
        }
        else if playerTurn == 2{
            player2Color = "blue"
        }
    }

    @IBAction func aquamarineButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "aquamarine"
        }
        else if playerTurn == 2{
            player2Color = "aquamarine"
        }
    }
    @IBAction func blackButtonPressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "black"
        }
        else if playerTurn == 2{
            player2Color = "black"
        }
    }
    @IBAction func lightBluePressed(_ sender: Any) {
        if playerTurn == 1{
            player1Color = "lightBlue"
        }
        else if playerTurn == 2{
            player2Color = "lightBlue"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func confirmPressed(_ sender: Any) {
        if actualNumPlayer == totalNumPlayers{
            if player2Human == false{
                player2Color = player1Color
            }
            if player2Color == player1Color{
                var randomImage = 0
                
                while player2Color == player1Color{
                    randomImage = Int.random(in: 0...8)
                    if randomImage == 0{
                        player2Color = "red"
                    }else if randomImage == 1{
                        player2Color = "blue"
                    }else if randomImage == 2{
                        player2Color = "yellow"
                    }else if randomImage == 3{
                        player2Color = "green"
                    }else if randomImage == 4{
                        player2Color = "orange"
                    }else if randomImage == 5{
                        player2Color = "purple"
                    }else if randomImage == 6{
                        player2Color = "aquamarine"
                    }else if randomImage == 7{
                        player2Color = "black"
                    }else if randomImage == 8{
                        player2Color = "lightBlue"
                    }
                }
                
            }
            performSegue(withIdentifier: "startGame", sender: self)
        }else{
            
            actualNumPlayer += 1
            if (actualNumPlayer == 2){
                playerTurn = 2
                if player1Color == "red"{
                    redButton.isEnabled = false
                    redButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "blue"){
                    blueButton.isEnabled = false
                    blueButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "yellow"){
                    yellowButton.isEnabled = false
                    yellowButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "green"){
                    greenButton.isEnabled = false
                    greenButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "orange"){
                    orangeButton.isEnabled = false
                    orangeButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "purple"){
                    purpleButton.isEnabled = false
                    purpleButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "aquamarine"){
                    aquamarineButton.isEnabled = false
                    aquamarineButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "black"){
                    blackButton.isEnabled = false
                    blackButton.setTitle("Selected", for: UIControl.State())
                }else if(player1Color == "lightBlue"){
                    lightBlueButton.isEnabled = false
                    lightBlueButton.setTitle("Selected", for: UIControl.State())
                }
                playerText.text = "Select player 2"
                playerName.placeholder = "Player  "+String(actualNumPlayer)
                playerName.text = ""
            }
        }
        
    }
    func setNumPlayers(totalPlayers:Int){
        totalNumPlayers = totalPlayers
        if totalNumPlayers == 1{
            player2Human = false
            player2Name = "AI player"
        }else{
            player2Human = true
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startGame"{
            if let startTheGame = segue.destination as? ViewController{
                startTheGame.startGame(player1Col:player1Color, player2Col:player2Color, player1Nom:player1Name, player2Nom:player2Name, p2Human:player2Human)
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
