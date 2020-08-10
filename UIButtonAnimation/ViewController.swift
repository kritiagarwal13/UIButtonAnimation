//
//  ViewController.swift
//  UIButtonAnimation
//
//  Created by Kriti Agarwal on 10/08/20.
//  Copyright © 2020 KritiAgarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- @IBOutlets
    @IBOutlet var buttons: [UIButton]!
    
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for each in buttons {
            each.layer.cornerRadius = 8
        }
    }
    
    
    //MARK:- @IBActions
    @IBAction func pulseBtnTapped(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func flashBtnTapped(_ sender: UIButton) {
        sender.flash()
    }
    
    @IBAction func shakeBtnTapped(_ sender: UIButton) {
        
    }
    

}

