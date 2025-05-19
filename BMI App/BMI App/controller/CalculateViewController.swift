//
//  ViewController.swift
//  BMI App
//
//  Created by shivakumar chirra on 15/05/25.
//

import UIKit

class CalculateViewController: UIViewController {

    var calculateBrain = CalculateBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weigthLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height =  String(format: "%.2f", sender.value)
        heightLabel.text = "\(height) Cms"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        
        let weight = String(format: "%.2f", sender.value)
        weigthLabel.text = "\(weight) kgs"
    }
    
    
    @IBAction func calculate(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculateBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
        }
        
        
    }

   

}
 
