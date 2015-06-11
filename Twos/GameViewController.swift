//
//  GameViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/10/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var deck: Deck

    @IBOutlet weak var cardNumberField: UITextField!
    @IBOutlet weak var selectedCardLabel: UILabel!
    
    @IBAction func getATen(sender: UIButton) {
        didSelectCard(10)
    }
    @IBAction func getATwo(sender: UIButton) {
        didSelectCard(2)
    }
    
    @IBAction func submit(sender: UIButton) {
        if let cardIndex = cardNumberField.text.toInt() {
            if let selectedCard = deck.cardAtIndex(cardIndex) {
               didSelectCard(selectedCard)
            }
        }
    }
    
    init(deck: Deck) {
        self.deck = deck
        super.init(nibName: "GameViewController", bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("whatever")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didSelectCard(selectedCard: Int) {
        switch selectedCard {
        case 2: selectedCardLabel.text = "You got a 2! You win twos!"
        case 10: showWildCardModal()
        default: selectedCardLabel.text = "You got a \(selectedCard)! You lose twos!"
        }
    }
    
    func showWildCardModal() {
        let wcvc = WildCardViewController()
        let closure = { (selectedCard: Int) -> Void in
            self.didSelectCard(selectedCard)
        }
        wcvc.cardSelectedClosure = closure
        presentViewController(wcvc, animated: true, completion: nil)
    }
    
}
