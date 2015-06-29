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
    
    let winCardNames = [
        "2_of_clubs",
        "2_of_hearts",
        "2_of_spades",
        "2_of_diamonds"
    ]

    let wildCardNames = [
        "10_of_clubs",
        "10_of_hearts",
        "10_of_spades",
        "10_of_diamonds"
    ]
        
    let goAgainCardNames = [
        "queen_of_clubs",
        "queen_of_hearts",
        "queen_of_spades",
        "queen_of_diamonds"
    ]
    
    let otherCardNames = [
        "3_of_clubs",
        "3_of_hearts",
        "3_of_spades",
        "3_of_diamonds",
        "4_of_clubs",
        "4_of_hearts",
        "4_of_spades",
        "4_of_diamonds",
        "5_of_clubs",
        "5_of_hearts",
        "5_of_spades",
        "5_of_diamonds",
        "6_of_clubs",
        "6_of_hearts",
        "6_of_spades",
        "6_of_diamonds",
        "7_of_clubs",
        "7_of_hearts",
        "7_of_spades",
        "7_of_diamonds",
        "8_of_clubs",
        "8_of_hearts",
        "8_of_spades",
        "8_of_diamonds",
        "9_of_clubs",
        "9_of_hearts",
        "9_of_spades",
        "9_of_diamonds",
        "jack_of_clubs",
        "jack_of_hearts",
        "jack_of_spades",
        "jack_of_diamonds",
        "king_of_clubs",
        "king_of_hearts",
        "king_of_spades",
        "king_of_diamonds",
        "ace_of_clubs",
        "ace_of_hearts",
        "ace_of_spades",
        "ace_of_diamonds"
    ]
    
    override init() {
        var cards: [Card] = []
        for cardName in winCardNames {
            cards.append(Card(cardName: cardName, event: .Win))
        }
        for cardName in wildCardNames {
            cards.append(Card(cardName: cardName, event: .Wild))
        }
        for cardName in goAgainCardNames {
            cards.append(Card(cardName: cardName, event: .GoAgain))
        }
        for cardName in otherCardNames {
            cards.append(Card(cardName: cardName, event: .Lose))
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
