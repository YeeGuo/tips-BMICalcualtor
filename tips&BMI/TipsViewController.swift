//
//  TipsViewController.swift
//  tips&BMI
//
//  Created by 張凱棋 on 2023/4/6.
//

import UIKit

class TipsViewController: UIViewController {

    @IBOutlet weak var sumTextField: UITextField!
    
    @IBOutlet weak var tipsTextField: UITextField!
    
    @IBOutlet weak var peopleTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipsLabel: UILabel!
    
    @IBOutlet weak var avgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initUI()
    }
    
    @IBAction func calculate(_ sender: Any) {
        let tips = (Double(sumTextField.text!) ?? 0) * (Double(tipsTextField.text!) ?? 0) / 100
        let total = (Double(sumTextField.text!) ?? 0) + tips
        let avg = Int(total) / (Int(peopleTextField.text!) ?? 1)
        
        totalLabel.text = String(Int(total))
        tipsLabel.text = String(Int(tips))
        avgLabel.text = String(avg)
        
        view.endEditing(true)
    }
    @IBAction func clear(_ sender: Any) {
        initUI()
        view.endEditing(true)
    }
    func initUI(){
        sumTextField.text = ""
        tipsTextField.text = ""
        peopleTextField.text = ""
        totalLabel.text = "0"
        tipsLabel.text = "0"
        avgLabel.text = "0"
    }
    
}
