//
//  CalculateBrain.swift
//  BMI App
//
//  Created by shivakumar chirra on 19/05/25.
//

import UIKit

struct CalculateBrain {
    
    var bmi: BMI?
    
    func getBMIValue () -> String {
        
        let bmiOneDecimanlPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiOneDecimanlPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height / 100 , 2)
        
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, color:  UIColor(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) ), advice: "eat more buddy!")
        }else if  bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, color: UIColor(#colorLiteral(red: 0.3411764706, green: 0.6235294118, blue: 0.168627451, alpha: 1)), advice: "You are good to go!")
        }else {
            bmi = BMI(value: bmiValue, color: UIColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), advice: "You ned to go to jym!")
        }
    }
}
