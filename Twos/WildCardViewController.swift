//
//  WildCardViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class WildCardViewController: UIViewController {
    
    var selectedCard: Int?
    
    @IBAction func selectWildCard(sender: UIButton) {
        selectedCard = 3
        presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        let nc = presentingViewController as! UINavigationController
        let rvc = nc.viewControllers.last as! ResultViewController
        rvc.selectedCard = selectedCard
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
