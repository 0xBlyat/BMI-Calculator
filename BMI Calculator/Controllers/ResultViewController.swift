//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Tony Alhwayek on 12/27/22.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var bmiLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    // Recalculate button dismisses the segue
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
