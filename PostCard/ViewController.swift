//
//  ViewController.swift
//  PostCard
//
//  Created by Amit Badlani on 10/14/14.
//  Copyright (c) 2014 Amitster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameField: UITextField!
    @IBOutlet weak var enterMessageField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false;
        messageLabel.text = enterMessageField.text;
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false;
        nameLabel.text = enterNameField.text;
        nameLabel.textColor = UIColor.blueColor()
        
        enterMessageField.text = "" ;
        enterMessageField.resignFirstResponder();
        
        enterNameField.text = ""
        enterNameField.resignFirstResponder();
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

