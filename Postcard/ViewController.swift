//
//  ViewController.swift
//  Postcard
//
//  Created by Todd Ecclestone on 9/30/14.
//  Copyright (c) 2014 Neurofoundry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messgaeLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messgaeLabel.hidden = false
        messgaeLabel.text = enterMessageTextField.text
        messgaeLabel.textColor = UIColor.redColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

