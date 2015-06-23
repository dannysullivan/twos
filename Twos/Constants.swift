//
//  Constants.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/12/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import Foundation

enum CardValue {
    case Ace
    case Two
    case Three
    case Four
    case Five
    case Six
    case Seven
    case Eight
    case Nine
    case Ten
    case Jack
    case Queen
    case King
    
    static let allCards: [CardValue] =
    [
        CardValue.Ace,
        CardValue.Two,
        CardValue.Three,
        CardValue.Four,
        CardValue.Five,
        CardValue.Six,
        CardValue.Seven,
        CardValue.Eight,
        CardValue.Nine,
        CardValue.Ten,
        CardValue.Jack,
        CardValue.Queen,
        CardValue.King
    ]
}