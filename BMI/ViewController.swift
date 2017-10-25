//
//  ViewController.swift
//  BMI
//
//  Created by mcmorro1 on 10/25/17.
//  Copyright © 2017 mcmorro1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Height_UserInput: UITextField!
    
    
    @IBOutlet weak var Weight_UserInput: UITextField!
    
    
    @IBOutlet weak var testLabel: UILabel!
    
    var user_height: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Height_UserInput.delegate = self
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        user_height = textField.text!
        testLabel.text = user_height
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

