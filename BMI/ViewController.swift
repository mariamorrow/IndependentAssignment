//
//  ViewController.swift
//  BMI
//
//  Created by mcmorro1 on 10/25/17.
//  Copyright © 2017 mcmorro1. All rights reserved.
//

import UIKit

let someBMI = BMIcalculator()

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var Height_UserInput: UITextField!
    @IBOutlet weak var Weight_UserInput: UITextField!

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
       performSegue(withIdentifier: "seguetoTVC", sender: self)
        
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField == Height_UserInput {
        someBMI.user_height = Height_UserInput.text!

        }
        else if textField == Weight_UserInput {
        someBMI.user_weight = Weight_UserInput.text!
 
        }
        else {
            print("UI Text Field Error")
        }
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        someBMI.user_height = Height_UserInput.text!
        someBMI.user_weight = Weight_UserInput.text!
        print(someBMI.user_height)
        print(someBMI.user_weight)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

