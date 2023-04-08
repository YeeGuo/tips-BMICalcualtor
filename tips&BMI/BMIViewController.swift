//
//  BMIViewController.swift
//  tips&BMI
//
//  Created by 張凱棋 on 2023/4/6.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var weightTextField: UITextField!
    
    @IBOutlet weak var heightTextField: UITextField!
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weightTextField.text = ""
        heightTextField.text = ""
        bmiLabel.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        let meters = (Double(heightTextField.text!) ?? 0) / 100
        let bmi = round((Double(weightTextField.text!) ?? 0) / pow(meters, 2) * 10) / 10
        
        if bmi > 0, bmi < 18.5{
            bmiLabel.text = "\(String(bmi))\n體重過輕"
        }
        else if bmi >= 18.5, bmi < 24{
            bmiLabel.text = "\(String(bmi))\n健康體位"
        }
        else if bmi >= 24, bmi < 27{
            bmiLabel.text = "\(String(bmi))\n異常體位 - 過重"
        }
        else if bmi >= 27, bmi < 30{
            bmiLabel.text = "\(String(bmi))\n異常體位 - 輕度肥胖"
        }
        else if bmi >= 30, bmi < 35{
            bmiLabel.text = "\(String(bmi))\n異常體位 - 中度肥胖"
        }
        else if bmi >= 35{
            bmiLabel.text = "\(String(bmi))\n異常體位 - 重度肥胖"
        }
        
        view.endEditing(true)
    }
    

}
