//
//  ViewController.swift
//  Postcard
//
//  Created by Gavin Hobbs on 1/30/17.
//  Copyright © 2017 Gavin Hobbs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var recipientLabel: UILabel!
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

    @IBAction func sendMailButtonPressed(_ sender: UIButton) {
        // Code will evaluate when we press the button
        // Add a comment here
        messageLabel.isHidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.lightGray
        
        // Set the input message box to empty, and bring down the keyboard
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        // Show the 'To' and recipient labels and populate recipient
        recipientLabel.isHidden = false
        toLabel.isHidden = false
        recipientLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        
        mailButton.setTitle("Message Sent!", for: UIControlState.normal)
    }

}

