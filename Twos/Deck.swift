//
//  Deck.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class Deck: NSObject {
    
    var cards: [Card]
    
    override init() {
        var cards: [Card] = []
        for suit in TwosConstants.Suits {
            for cardName in TwosConstants.WinCards {
                cards.append(Card(cardName: "\(cardName)_of_\(suit)", event: .Win))
            }
            for cardName in TwosConstants.WildCards {
                cards.append(Card(cardName: "\(cardName)_of_\(suit)", event: .Wild))
            }
            for cardName in TwosConstants.GoAgainCards {
                cards.append(Card(cardName: "\(cardName)_of_\(suit)", event: .GoAgain))
            }
            for cardName in TwosConstants.LoseCards {
                cards.append(Card(cardName: "\(cardName)_of_\(suit)", event: .Lose))
            }
        }
        
        let cardsInDeck = cards.count
        for i in 0..<(cardsInDeck) {
            let j = Int(arc4random_uniform(UInt32(cardsInDeck - i))) + i
            swap(&cards[i], &cards[j])
        }

        self.cards = cards
        super.init()
    }
    
    func cardAtIndex(index: Int) -> Card? {
        return cards[index]

    }
   
}
