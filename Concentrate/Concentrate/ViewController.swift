//
//  ViewController.swift
//  Concentrate
//
//  Created by David Schriemer on 2019-09-08.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Concentration(numberOfPairsOfCards: cardButtons.count / 2) //connection between the two files
    
    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)" //Every time flipCount changes this is activated
        }
    }
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]! //Array
    
    var emojiChoices = ["🎃","🎃","👻","👻"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender)
        {
            print("cardnumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("card not in array")
        }
        
    }
    
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        
    }
    


}

