//
//  ResultViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var selectedCard: Int?
    
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
        if let card = selectedCard {
            switch card {
            case 2:
                resultLabel.text = "You got a 2! You win twos!"
            case 10:
                performSegueWithIdentifier("WildCardModal", sender: self)
            default:
                resultLabel.text = "You got a \(card)! You lose twos!"
            }
        }
    }
}
