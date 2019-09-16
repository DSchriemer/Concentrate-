//
//  Concentration.swift
//  Concentrate
//
//  Created by David Schriemer on 2019-09-15.
//

import Foundation

class Concentration
{
    var cards = [Card]()
    
    func chooseCard(at index: Int) {
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true

        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards {
        let card = Card()
        cards += [card, card]
        }
    }
    
    
    
}
