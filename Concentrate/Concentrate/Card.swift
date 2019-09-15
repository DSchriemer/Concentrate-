//
//  Card.swift
//  Concentrate
//
//  Created by David Schriemer on 2019-09-15.
//

import Foundation

struct Card
{
    var isFaceUp = false
    var isMatched = false
    var idenfifier: Int
    
    static var identifierFactory = 0
    
    static func getUnqiueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        self.idenfifier = Card.getUnqiueIdentifier()
    }
}
