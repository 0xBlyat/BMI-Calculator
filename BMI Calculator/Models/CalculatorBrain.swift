//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tony Alhwayek on 12/27/22.
//

import UIKit

struct CalculatorBrain {
    
    var BMI: BMIstruct?

    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = (weight / (pow(height, 2)))
        
        print(bmiValue)
        
        // Change advice text and background color based on passed BMI value
        if (bmiValue < 18.5) {
            BMI = BMIstruct(value: bmiValue, advice: "Eat more burgers", color: UIColor(red: 111/255, green: 217/255, blue: 249/255, alpha: 1))
        } else if (bmiValue <= 24.9) {
            BMI = BMIstruct(value: bmiValue, advice: "Your weight is healthy", color: UIColor(red: 45/255, green: 180/255, blue: 36/255, alpha: 1)   )
        } else  {
            BMI = BMIstruct(value: bmiValue, advice: "Go workout! 😡", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let roundedBMI = String(format: "%.1f", BMI?.value ?? 0.0)
        return roundedBMI
    }
    
    func getAdvice() -> String {
        return BMI?.advice ?? "BMI ADVICE ERROR"
    }
    
    func getColor() -> UIColor {
        return BMI?.color ?? .blue
    }
    
    
}
