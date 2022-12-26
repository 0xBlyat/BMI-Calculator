//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Tony Alhwayek on December 25, 2022
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var heightSlider: UISlider!
    @IBOutlet var weightSlider: UISlider!
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        // BMI = weight / height ^ 2
        let BMI = weightSlider.value / (pow(heightSlider.value, 2))
        print(BMI)
    }
    
}

