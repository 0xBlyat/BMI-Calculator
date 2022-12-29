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
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
