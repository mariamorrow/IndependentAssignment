//
//  ViewController.swift
//  BMI
//
//  Created by mcmorro1 on 10/25/17.
//  Copyright © 2017 mcmorro1. All rights reserved.
//

import UIKit


    var user_height: String = ""
    var user_weight: String = ""

class calculator {
    func BodyMassIndex () -> Double {
    let user_height_value = Double(user_height)
    let user_weight_value = Double(user_weight)
        
     let BMI_value = 0.45*user_weight_value!/((user_height_value!*0.025)*(user_height_value!*0.025))
        return BMI_value
    }
}

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Height_UserInput: UITextField!
    @IBOutlet weak var Weight_UserInput: UITextField!
    
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var textLabel2: UILabel!
    
    
    
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
    
    @IBAction func ViewChange(_ sender: Any) {
        
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        user_height = "Height: "
        user_height += Height_UserInput.text!
        user_height += " inches "
        testLabel.text = user_height
        
        user_weight = "Weight: "
        user_weight += Weight_UserInput.text!
        textLabel2.text = user_weight
        user_weight += " lbs"
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

