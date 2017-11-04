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
    
/*    func calculate () -> Double {
        if (user_height != "" && user_weight != "") {
        user_height_value = Double(user_height)!
        user_weight_value = Double(user_weight)!
        bmi_value = (user_weight_value*0.45)/((user_height_value*0.025)*(user_height_value*0.025))
        
        print(bmi_value)
        print("Hi")
        }
        else{
            print("Error")
        }
    return bmi_value
    }
    
    func display () -> String
    {
        bmi = String(bmi_value)
        return bmi

    }
    
    func evaluation () -> String
    {
        if bmi_value < 18.5 {
            message = "Your BMI indicates that you are underweight. Go eat some donuts."
        }
        else if bmi_value < 24.9 {
            message = "Your BMI indicates that your weight is normal. Congrats! Keep it up!"
        }
        else if bmi_value < 29.9 {
            message = "Your BMI indicates that you are overweight. You may want to consider laying off the Halloween candy"
        }
        else {
            message = "Your BMI indicates that you are obese. NO MORE CANDY"
        }
        return message
    }
*/
    
    func calculate () -> (number: String, text: String) {
        if (user_height == nil && user_weight == nil) {
                print("Error")
           
        }
        else
        {
            user_height_value = Double(user_height)!
            user_weight_value = Double(user_weight)!
            bmi_value = (user_weight_value*0.45)/((user_height_value*0.025)*(user_height_value*0.025))
            
            print(bmi_value)
            print("Hi")
            bmi = String(bmi_value)
        }


        if bmi_value < 18.5 {
            message = "Your BMI indicates that you are underweight. Go eat some donuts."
        }
        else if bmi_value < 24.9 {
            message = "Your BMI indicates that your weight is normal. Congrats! Keep it up!"
        }
        else if bmi_value < 29.9 {
            message = "Your BMI indicates that you are overweight. You may want to consider laying off the Halloween candy"
        }
        else {
            message = "Your BMI indicates that you are obese. NO MORE CANDY"
        }
        return (bmi,message)
    }
    
}
