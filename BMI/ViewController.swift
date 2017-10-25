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
    @IBOutlet weak var textLabel2: UILabel!
    

    var user_height: String = ""
    var user_weight: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Height_UserInput.delegate = self
        Weight_UserInput.delegate = self
        
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        user_height = Height_UserInput.text!
        testLabel.text = user_height
        
        user_weight = Weight_UserInput.text!
        textLabel2.text = user_weight
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

