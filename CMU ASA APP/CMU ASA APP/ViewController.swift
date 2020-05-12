//
//  ViewController.swift
//  CMU ASA APP
//
//  Created by Eugene  Choi on 5/12/20.
//  Copyright © 2020 CMU ASA. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var memberTextField: UITextField!
    @IBOutlet weak var memberSearchLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field's user input through delegate callbacks.
        memberTextField.delegate = self
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        // Hide keyboard (get rid of first responder when user submits the search)
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        memberTextField.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        memberSearchLabel.text = "Member"
    }

}

