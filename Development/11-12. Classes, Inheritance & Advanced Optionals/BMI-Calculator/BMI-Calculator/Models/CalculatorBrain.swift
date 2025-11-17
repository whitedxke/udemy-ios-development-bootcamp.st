//
//  CalculaterBrain.swift
//  BMI-Calculator
//
//  Created by Pavel Betenya on 17.11.25.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
            let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
        
        func getAdvice() -> String {
            return bmi?.advice ?? "No advice"
        }
        
        func getColor() -> UIColor {
            return bmi?.color ?? UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        mutating func calculateBMI(height: Float, weight: Float) {
            let bmiValue = weight / (height * height)

            if bmiValue < 18.5 {
                bmi = BMI(
                    value: bmiValue,
                    advice: "Eat more pies!",
                    color: UIColor(red: 0.4745, green: 0.8392, blue: 0.9765, alpha: 1.0),
                )
            } else if bmiValue < 24.9 {
                bmi = BMI(
                    value: bmiValue,
                    advice: "Fit as a fiddle!",
                    color: UIColor(red: 0.7216, green: 0.8863, blue: 0.5922, alpha: 1.0),
                )
            } else {
                bmi = BMI(
                    value: bmiValue,
                    advice: "Eat less pies!",
                    color: UIColor(red: 0.9098, green: 0.4784, blue: 0.6431, alpha: 1.0),
                )
            }
        }
}
