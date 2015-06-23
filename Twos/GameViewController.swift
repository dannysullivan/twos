//
//  GameViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/10/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var deck = Deck()
    var selectedCardIndex: Int?
    var selectedCardValue: CardValue?

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var cardIndexLabel: UILabel!
    @IBOutlet weak var cardIndexSlider: UISlider!
    
    @IBAction func cardIndexSliderChanged(sender: UISlider) {
        selectedCardIndex = Int(sender.value + 0.5)
        cardIndexLabel.text = "\(selectedCardIndex!)"
    }
    
    @IBAction func getATen(sender: UIButton) {
        didSelectCard(.Ten)
    }
    @IBAction func getATwo(sender: UIButton) {
        didSelectCard(.Two)
    }
    
    @IBAction func submit(sender: UIButton) {
        if let index = selectedCardIndex {
            if let selectedCard = deck.cardAtIndex(index) {
                didSelectCard(selectedCard)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        selectedCardIndex = 25
        cardIndexLabel.text = "25"
        cardIndexSlider.value = 25
    }
    
    func didSelectCard(selectedCard: CardValue) {
        selectedCardValue = selectedCard
        
        performSegueWithIdentifier("ResultModal", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        let rvc = segue.destinationViewController as! ResultViewController
        rvc.selectedCard = selectedCardValue!
    }
}
