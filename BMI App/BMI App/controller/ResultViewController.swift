//
//  ResultViewController.swift
//  BMI App
//
//  Created by shivakumar chirra on 19/05/25.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue: String?
    var advice:String?
    var color :UIColor?
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
