//
//  Card.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/28/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class Card: NSObject {
    let cardName: String
    let event: CardEvent
    
    init(cardName: String, event: CardEvent) {
        self.cardName = cardName
        self.event = event
        super.init()
    }
}
