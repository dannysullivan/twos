//
//  ResultViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var selectedCard: Card?
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
        
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
        cardImage.image = UIImage(named: selectedCard!.cardName)
        if let card = selectedCard {
            switch card.event {
            case .Win:
                resultLabel.text = "You win Twos!"
            case .Wild:
                performSegueWithIdentifier("WildCardModal", sender: self)
            default:
                resultLabel.text = "You lose Twos!"
            }
        }
    }
}
