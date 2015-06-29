//
//  Constants.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/12/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import Foundation

enum CardEvent {
    case Win
    case Wild
    case GoAgain
    case Lose
}

struct TwosConstants {
    static let Suits = ["diamonds", "spades", "hearts", "clubs"]
    static let WinCards = ["2"]
    static let LoseCards = ["3", "4", "5", "6", "7", "8", "9", "jack", "king", "ace"]
    static let WildCards = ["10"]
    static let GoAgainCards = ["queen"]
}