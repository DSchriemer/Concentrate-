//
//  ViewController.swift
//  Concentrate
//
//  Created by David Schriemer on 2019-09-08.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2) //connection between the two files
    
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
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("card not in array")
        }
        
    }
    
    func updateViewFromModel()
    { //make sure all cards match
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: UIControl.State.normal)
                button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            } else {
                button.setTitle("", for: UIControl.State.normal)
                button.backgroundColor = card.isMatched ? #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0) : #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1) // make cards clear if match
            }
        }
    }
    
    var emoji = [Int:String]()
    
    var emojichoices = ["🎃","🦇","🙀","👻","🕷","💀","🍭","🍬","🍫"]
    
    func emoji(for card: Card) -> String {
     
        return emoji[card.idenfifier] ?? "?"
    }
 
}

