//
//  Deck.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class Deck: NSObject {
    
    var cards: [CardValue]
    let cardsInDeck = 52
    
    override init() {
        var cards: [CardValue] = []
        for _ in 0...3 {
            for card in CardValue.allCards {
                cards.append(card)
            }
        }
        
        for i in 0..<(cardsInDeck) {
            let j = Int(arc4random_uniform(UInt32(cardsInDeck - i))) + i
            swap(&cards[i], &cards[j])
        }
        
        self.cards = cards
        super.init()
    }
    
    func cardAtIndex(index: Int) -> CardValue? {
        return cards[index]

    }
   
}
