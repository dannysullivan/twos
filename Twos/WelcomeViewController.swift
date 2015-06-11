//
//  WelcomeViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/10/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBAction func startGame(sender: UIButton) {
        let deck = Deck()
        let gvc = GameViewController(deck: deck)
        showViewController(gvc, sender: self)
    }
    
    init() {
        super.init(nibName: "WelcomeViewController", bundle: nil)
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
