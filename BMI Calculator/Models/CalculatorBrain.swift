//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Tony Alhwayek on 12/27/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var BMI: Float?

    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        BMI = (weight / (pow(height, 2)))
    }
    
    func getBMIValue() -> String {
        let roundedBMI = String(format: "%.1f", BMI!)
        return roundedBMI
    }
    
    
}
