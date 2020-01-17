//
//  ViewController.swift
//  TippyCal
//
//  Created by Brandon Elmore on 1/13/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalcText(_ sender: Any) {
        //get bill
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = defaults.double(forKey: "myTip")
        
        //Calc tip and total
        let tip = bill * tipPercentage
        let total = bill + tip
        
        // Update tip and total amount
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
    }
}

