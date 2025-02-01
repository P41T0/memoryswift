//
//  BigImageViewController.swift
//  memoryProjectPauTort
//
//  Created by AlumneiOS on 3/5/24.
//

import UIKit

class BigImageViewController: UIViewController {
    var cardImage:UIImage = .cardIconbig
    var model = memoryGameModel()
    var cardDescription:String = ""
    @IBOutlet weak var bigImageCard: UIImageView!
    @IBOutlet weak var cardName: UILabel!
    func settedImage(CharactNum:Int) -> UIImage{
        
        if (CharactNum == 1){
            cardDescription = "8Bit"
            return UIImage._8Bitbig
        }else if (CharactNum == 2){
            cardDescription = "Bea"
            return UIImage.beabig
        }else if (CharactNum == 3){
            cardDescription = "Bo"
            return UIImage.bobig
        }else if (CharactNum == 4){
            cardDescription = "Brock"
            return UIImage.brockbig
        }else if (CharactNum == 5){
            cardDescription = "Bull"
            return UIImage.bullbig
        }else if (CharactNum == 6){
            cardDescription = "Colt"
            return UIImage.coltbig
        }else if (CharactNum == 7){
            cardDescription = "Dynamike"
            return UIImage.dynamikebig
        }else if (CharactNum == 8){
            cardDescription = "Jessie"
            return UIImage.jessiebig
        }else if (CharactNum == 9){
            cardDescription = "Pam"
            return UIImage.pambig
        }else if (CharactNum == 10){
            cardDescription = "Piper"
            return UIImage.piperbig
        }else if (CharactNum == 11){
            cardDescription = "El Primo"
            return UIImage.primobig
        }else if (CharactNum == 12){
            cardDescription = "Spike"
            return UIImage.spikebig
        }else {
            cardDescription = "Crow phoenix (bonus!)"
            return UIImage.crowphoenixbig
        }
    }
    func setBigImage(imageToShowInt:Int, model:memoryGameModel){
        cardImage = settedImage(CharactNum: imageToShowInt)
        self.model = model
    }
    override func viewDidLoad() {
        _ = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(returnToGame), userInfo: nil, repeats: false)
        bigImageCard.image = cardImage
        cardName.text = cardDescription
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @objc func returnToGame() {
        performSegue(withIdentifier: "gameSegue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gameSegue"{
            if let returnToGame = segue.destination as? ViewController{
                returnToGame.continueGame(modelMemory: model)
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
