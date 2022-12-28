//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Tony Alhwayek on 12/25/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Can use .red instead of UIColor.red
        view.backgroundColor = .gray
        
        let label = UILabel()
        label.text = bmiValue
        
        // Create rectangle with these parameters
        label.frame = CGRect(x: 50, y: 30, width: 100, height: 50)
        
        // Add label to our view
        view.addSubview(label)
    }
}
