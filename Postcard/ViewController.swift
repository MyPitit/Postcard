//
//  ViewController.swift
//  Postcard
//
//  Created by My Pitit on 28/10/2014.
//  Copyright (c) 2014 Ukon Cherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
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
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = "" //Treu el texte escrit a Enter Message
        enterMessageTextField.resignFirstResponder() //Per treure el teclat de la pantalla quan fs click "Send"
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }


}

