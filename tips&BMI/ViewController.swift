//
//  ViewController.swift
//  tips&BMI
//
//  Created by 張凱棋 on 2023/4/6.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var containerViews: [UIView]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        containerViews[0].isHidden = false
        containerViews[1].isHidden = true
    }

    
    @IBAction func change(_ sender: UISegmentedControl) {
        for containerView in containerViews{
            containerView.isHidden = true
        }
        containerViews[sender.selectedSegmentIndex].isHidden = false
    }
}

