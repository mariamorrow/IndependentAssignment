//
//  BMI_Class.swift
//  BMI
//
//  Created by mcmorro1 on 11/3/17.
//  Copyright © 2017 mcmorro1. All rights reserved.
//

import Foundation

class BMIcalculator {
    var user_height: String = ""
    var user_weight: String = ""
    
    var user_height_value: Double = 0
    var user_weight_value: Double = 0
    var bmi_value: Double = 0
    
    var bmi: String = ""
    var message: String = ""
    
    let characters = CharacterSet.decimalDigits.inverted
    
    func calculate () -> (number: String, text: String) {
        if user_height == "" || user_weight == "" {
            print("Nil Error")
            message = "Height and/or weight were entered incorrectly. Please try again"
        }
        else if user_height.rangeOfCharacter(from: characters) != nil {
            print("user_height Nil Error")
            message = "Please enter your height and weight with numbers only"
        }
        else if user_weight.rangeOfCharacter(from: characters) != nil {
            print("user_weight Nil Error")
            message = "Please enter your height and weight with numbers only"
        }
        else {
            user_height_value = Double(user_height)!
            user_weight_value = Double(user_weight)!
            bmi_value = (user_weight_value*0.45)/((user_height_value*0.025)*(user_height_value*0.025))
            
            print(bmi_value)
        
            bmi = String(bmi_value)
        if user_height_value < 12 {
        message = "Your height was likely entered incorrectly. Be sure to enter your height in inches"
        }
        else {
        if bmi_value < 19 {
            message = "Your BMI indicates that you are underweight. Go eat some donuts."
        }
        else if bmi_value < 24.9 {
            message = "Your BMI indicates that your weight is normal. Congrats! Keep it up!"
        }
        else if bmi_value < 29.9 {
            message = "Your BMI indicates that you are overweight. Slow down on the candy consumption"
        }
        else {
            message = "Your BMI indicates that you are obese. NO MORE CANDY"
        }
        }
        }
        return (bmi,message)
}
}
