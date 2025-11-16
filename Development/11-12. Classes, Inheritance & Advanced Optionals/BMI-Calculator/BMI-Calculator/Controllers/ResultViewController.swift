//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Pavel Betenya on 16.11.25.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmiValue
    }
    
    @IBAction func recalculateBMIPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
