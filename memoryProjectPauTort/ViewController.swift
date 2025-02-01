//
//  ViewController.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 26/4/24.
//

import UIKit

class ViewController: UIViewController {
    var imageCardnum:Int = 0
    var cardsDiscovered:Int = 0
    var llista:[Int]=[]
    var player1 = player()
    var player2 = player()
    var llistaDescoberts:[String]=[]
    var buttonsToFlip:[Int]=[]
    var modelMemory = memoryGameModel()
    var playerTurn:Int = 1
    var player2Human:Bool = false
    var botTurn:Bool = true
    var cartaGirada1 = 0
    var cartaGirada2 = 0
    @IBOutlet var buttons: [UIButton]!


    @IBOutlet weak var p1Turn: UILabel!
    @IBOutlet weak var p2Turn: UILabel!
    @IBOutlet weak var p1ScoreText: UILabel!
    @IBOutlet weak var p2ScoreText: UILabel!
    @IBOutlet weak var p1NameText: UILabel!
    @IBOutlet weak var p2NameText: UILabel!
    @IBOutlet weak var p1Image: UIImageView!
    @IBOutlet weak var p2Image: UIImageView!
    
    @IBAction func button1Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[0].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum =  llista[0]
                modelMemory.cardDiscovered(position: 0)
                UIView.transition(with: buttons[0], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[0].setImage(self.settedImage(CharactNum: self.llista[0]), for: .normal)
                    self.buttons[0].backgroundColor = .gray
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
            
        }
    }
    @IBAction func button2Pressed(_ sender: Any) {
        if(botTurn==false){
            if(buttons[1].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[1]
                modelMemory.cardDiscovered(position: 1)
                UIView.transition(with: buttons[1], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[1].backgroundColor = .gray
                    self.buttons[1].setImage(self.settedImage(CharactNum: self.llista[1]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }

    @IBAction func button3Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[2].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[2]
                modelMemory.cardDiscovered(position: 2)
                UIView.transition(with: buttons[2], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[2].backgroundColor = .gray
                    self.buttons[2].setImage(self.settedImage(CharactNum: self.llista[2]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button4Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[3].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[3]
                modelMemory.cardDiscovered(position: 3)
                UIView.transition(with: buttons[3], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[3].backgroundColor = .gray
                    self.buttons[3].setImage(self.settedImage(CharactNum: self.llista[3]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button5Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[4].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[4]
                modelMemory.cardDiscovered(position: 4)
                UIView.transition(with: buttons[4], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[4].backgroundColor = .gray
                    self.buttons[4].setImage(self.settedImage(CharactNum: self.llista[4]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button6Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[5].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[5]
                modelMemory.cardDiscovered(position: 5)
                UIView.transition(with: buttons[5], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[5].backgroundColor = .gray
                    self.buttons[5].setImage(self.settedImage(CharactNum: self.llista[5]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button7Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[6].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[6]
                modelMemory.cardDiscovered(position: 6)
                UIView.transition(with: buttons[6], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[6].backgroundColor = .gray
                    self.buttons[6].setImage(self.settedImage(CharactNum: self.llista[6]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button8Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[7].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[7]
                modelMemory.cardDiscovered(position: 7)
                UIView.transition(with: buttons[7], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[7].backgroundColor = .gray
                    self.buttons[7].setImage(self.settedImage(CharactNum: self.llista[7]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button9Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[8].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[8]
                modelMemory.cardDiscovered(position: 8)
                UIView.transition(with: buttons[8], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[8].backgroundColor = .gray
                    self.buttons[8].setImage(self.settedImage(CharactNum: self.llista[8]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button10Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[9].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum =  llista[9]
                modelMemory.cardDiscovered(position: 9)
                UIView.transition(with: buttons[9], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[9].backgroundColor = .gray
                    self.buttons[9].setImage(self.settedImage(CharactNum: self.llista[9]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button11Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[10].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum =  llista[10]
                modelMemory.cardDiscovered(position: 10)
                UIView.transition(with: buttons[10], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[10].backgroundColor = .gray
                    self.buttons[10].setImage(self.settedImage(CharactNum: self.llista[10]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button12Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[11].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[11]
                modelMemory.cardDiscovered(position: 11)
                UIView.transition(with: buttons[11], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[11].backgroundColor = .gray
                    self.buttons[11].setImage(self.settedImage(CharactNum: self.llista[11]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button13Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[12].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[12]
                modelMemory.cardDiscovered(position: 12)
                UIView.transition(with: buttons[12], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[12].backgroundColor = .gray
                    self.buttons[12].setImage(self.settedImage(CharactNum: self.llista[12]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button14Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[13].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[13]
                modelMemory.cardDiscovered(position: 13)
                UIView.transition(with: buttons[13], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[13].backgroundColor = .gray
                    self.buttons[13].setImage(self.settedImage(CharactNum: self.llista[13]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button15Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[14].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[14]
                modelMemory.cardDiscovered(position: 14)
                UIView.transition(with: buttons[14], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[14].backgroundColor = .gray
                    self.buttons[14].setImage(self.settedImage(CharactNum: self.llista[14]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button16Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[15].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[15]
                modelMemory.cardDiscovered(position: 15)
                UIView.transition(with: buttons[15], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[15].backgroundColor = .gray
                    self.buttons[15].setImage(self.settedImage(CharactNum: self.llista[15]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button17Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[16].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[16]
                modelMemory.cardDiscovered(position: 16)
                UIView.transition(with: buttons[16], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[16].backgroundColor = .gray
                    self.buttons[16].setImage(self.settedImage(CharactNum: self.llista[16]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button18Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[17].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[17]
                modelMemory.cardDiscovered(position: 17)
                UIView.transition(with: buttons[17], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[17].backgroundColor = .gray
                    self.buttons[17].setImage(self.settedImage(CharactNum: self.llista[17]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button19Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[18].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[18]
                modelMemory.cardDiscovered(position: 18)
                UIView.transition(with: buttons[18], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[18].backgroundColor = .gray
                    self.buttons[18].setImage(self.settedImage(CharactNum: self.llista[18]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button20Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[19].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[19]
                modelMemory.cardDiscovered(position: 19)
                UIView.transition(with: buttons[19], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[19].backgroundColor = .gray
                    self.buttons[19].setImage(self.settedImage(CharactNum: self.llista[19]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button21Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[20].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[20]
                modelMemory.cardDiscovered(position: 20)
                UIView.transition(with: buttons[20], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[20].backgroundColor = .gray
                    self.buttons[20].setImage(self.settedImage(CharactNum: self.llista[20]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button22Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[21].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[21]
                modelMemory.cardDiscovered(position: 21)
                UIView.transition(with: buttons[21], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[21].backgroundColor = .gray
                    self.buttons[21].setImage(self.settedImage(CharactNum: self.llista[21]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button23Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[22].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[22]
                modelMemory.cardDiscovered(position: 22)
                UIView.transition(with: buttons[22], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[22].backgroundColor = .gray
                    self.buttons[22].setImage(self.settedImage(CharactNum: self.llista[22]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button24Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[23].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[23]
                modelMemory.cardDiscovered(position: 23)
                UIView.transition(with: buttons[23], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[23].backgroundColor = .gray
                    self.buttons[23].setImage(self.settedImage(CharactNum: self.llista[23]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }
    @IBAction func button25Pressed(_ sender: Any) {
        if (botTurn == false){
            if(buttons[24].currentImage == UIImage.cardIcon){
                botTurn = true
                imageCardnum = llista[24]
                modelMemory.cardDiscovered(position: 24)
                UIView.transition(with: buttons[24], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[24].backgroundColor = .gray
                    self.buttons[24].setImage(self.settedImage(CharactNum: self.llista[24]), for: .normal)
                }) { (finished) in
                    self.performSegue(withIdentifier: "showBigCard", sender: self)
                }
            }
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBigCard"{
            if let showBigCard = segue.destination as? BigImageViewController{
                
                showBigCard.setBigImage(imageToShowInt: imageCardnum, model: modelMemory)
                
            }
        }
        if segue.identifier == "gameEndedSegue"{
            if let gameOver = segue.destination as? GameOverViewController{
                gameOver.getPlayer(player1:self.player1,player2:self.player2,p2Human: player2Human)
            }
        }
        if segue.identifier == "terminateGame"{
            if let gameOver = segue.destination as? GameOverViewController{
                gameOver.getPlayer(player1:self.player1,player2:self.player2, p2Human: player2Human)
            }
        }
    }
    func settedColor(color:String)->UIColor{
        var realColor:UIColor = .gray
        if (color == "red"){
            realColor = UIColor(red: 0.85, green: 0, blue: 0.15, alpha: 1)
        }else if(color == "blue"){
            realColor = UIColor(red: 0, green: 0.4, blue: 0.85, alpha: 1)
        }else if(color == "green"){
            realColor = UIColor(red: 0, green: 0.7, blue: 0, alpha: 1)
        }else if(color == "yellow"){
            realColor = UIColor(red: 0.8, green: 0.8, blue: 0, alpha: 1)
        }else if (color == "orange"){
            realColor = UIColor(red: 0.9, green: 0.4, blue: 0, alpha: 1)
        }else if (color == "purple"){
            realColor = UIColor(red: 0.8, green: 0, blue: 0.9, alpha: 1)
        }else if (color == "aquamarine"){
            realColor = UIColor(red: 0, green: 0.6, blue: 0.4, alpha: 1)
        }else if (color == "black"){
            realColor = UIColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        }else if(color == "lightBlue"){
            realColor = UIColor(red: 0.25, green: 1, blue: 1, alpha: 1)
        }
        return realColor
    }
    func settedImage(CharactNum:Int) -> UIImage{
        
        if (CharactNum == 1){
            return UIImage._8Bit
        }else if (CharactNum == 2){
            return UIImage.bea
        }else if (CharactNum == 3){
            return UIImage.bo
        }else if (CharactNum == 4){
            return UIImage.brock
        }else if (CharactNum == 5){
            return UIImage.bull
        }else if (CharactNum == 6){
            return UIImage.colt
        }else if (CharactNum == 7){
            return UIImage.dynamike
        }else if (CharactNum == 8){
            return UIImage.jessie
        }else if (CharactNum == 9){
            return UIImage.pam
        }else if (CharactNum == 10){
            return UIImage.piper
        }else if (CharactNum == 11){
            return UIImage.primo
        }else if (CharactNum == 12){
            return UIImage.spike
        }else {
            return UIImage.crowphoenix
        }
    }
    
    
    func startGame(player1Col:String, player2Col:String, player1Nom:String, player2Nom:String, p2Human:Bool){
        player2Human = p2Human
        player1.setName(PlayerName: player1Nom)
        player1.setColor(pColor: player1Col)
        player2.setName(PlayerName: player2Nom)
        player2.setColor(pColor: player2Col)
        llista = modelMemory.iniciaPartida()
        modelMemory.setPlayers(p1: player1, p2: player2, p2Bot:player2Human)
        llistaDescoberts = modelMemory.getPlayerDiscoveredPair()
        playerTurn = modelMemory.getPlayerTurn()
        
        if (player2Human == false && playerTurn == 2){
            botTurn = true
        }else{
            botTurn = false
        }
    }
    
    func continueGame(modelMemory:memoryGameModel){
        (self.player1,self.player2,player2Human)=modelMemory.returnPlayers()
        self.modelMemory = modelMemory
        llista = modelMemory.getGameNumArray()
        llistaDescoberts = modelMemory.getPlayerDiscoveredPair()
        playerTurn = modelMemory.getPlayerTurn()
        print("player"+String(playerTurn))
        print(player2Human)

        
    }
    
    @objc func botSelectCard(){
        if(cardsDiscovered < buttons.count){
            print("entro")
            var cardSelected:Bool = false
            var button:Int = 0
            while cardSelected==false{
                button = Int.random(in: 0...24)
                if(buttons[button].currentImage == UIImage.cardIcon){
                    imageCardnum = llista[button]
                    modelMemory.cardDiscovered(position: button)
                    
                    cardSelected = true
                }
            }
            
            UIView.transition(with: buttons[button], duration: 0.75, options: .transitionFlipFromRight, animations: {
                self.buttons[button].setImage(self.settedImage(CharactNum: self.llista[button]), for: .normal)
                self.buttons[button].backgroundColor = .gray
            }) { (finished) in
                
                self.performSegue(withIdentifier: "showBigCard", sender: self)
            }
        }
    }
    @objc func goToEndScreen(){
        performSegue(withIdentifier: "gameEndedSegue", sender: self)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Configurar interfaz de usuario
        p1ScoreText.text = "\(player1.getScore()) points"
        p2ScoreText.text = "\(player2.getScore()) points"
        p1NameText.text = player1.getName()
        p2NameText.text = player2.getName()
        p1Image.backgroundColor = settedColor(color: player1.getColor())
        p2Image.backgroundColor = settedColor(color:player2.getColor())

        cardsDiscovered = 0
        for (i, boto) in buttons.enumerated() {
            if llistaDescoberts[i].isEmpty {
                boto.setImage(UIImage.cardIcon, for: UIControl.State())
            } else {
                configureButton(index: i)
            }
        }

        if cardsDiscovered >= buttons.count {
            Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(goToEndScreen), userInfo: nil, repeats: false)
        }
        if playerTurn == 1{
            p1Turn.text = "Your turn!"
            p2Turn.text = ""
        }else if playerTurn == 2{
            p1Turn.text = ""
            p2Turn.text = "Your turn!"
        }
    }

    func configureButton(index: Int) {
        if llistaDescoberts[index] == "player1" {
            buttons[index].backgroundColor = settedColor(color:player1.getColor())
            buttons[index].setImage(settedImage(CharactNum: llista[index]), for: .normal)
            cardsDiscovered += 1
        } else if llistaDescoberts[index] == "player2" {
            buttons[index].backgroundColor = settedColor(color:player2.getColor())
            buttons[index].setImage(settedImage(CharactNum: llista[index]), for: .normal)
            cardsDiscovered += 1
        } else if llistaDescoberts[index] == "flipCard" {
            buttons[index].backgroundColor = .gray
            buttons[index].setImage(settedImage(CharactNum: llista[index]), for: .normal)
            buttonsToFlip.append(index)
                
                    
        } else {
            buttons[index].backgroundColor = .gray
            buttons[index].setImage(settedImage(CharactNum: llista[index]), for: UIControl.State())
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if buttonsToFlip.count>0{
            for item in buttonsToFlip{
                UIView.transition(with: buttons[item], duration: 0.75, options: .transitionFlipFromRight, animations: {
                    self.buttons[item].setImage(UIImage.cardIcon, for: .normal)
                    
                })
                modelMemory.flippedImage(position:item)
            }
        }
        if (player2Human == false && playerTurn == 2){
            print("entro aqui")
            botTurn = true
            _ = Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(botSelectCard), userInfo: nil, repeats: false)
        }else{
            botTurn = false
        }
    }

}

