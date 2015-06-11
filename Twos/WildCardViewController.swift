//
//  WildCardViewController.swift
//  Twos
//
//  Created by Daniel Sullivan on 6/11/15.
//  Copyright (c) 2015 DannySullivan. All rights reserved.
//

import UIKit

class WildCardViewController: UIViewController {
    var cardSelectedClosure: ((Int) -> Void)?
    
    init() {
        super.init(nibName: "WildCardViewController", bundle: nil)
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("Not implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
