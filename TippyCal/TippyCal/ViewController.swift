//
//  ViewController.swift
//  TippyCal
//
//  Created by Brandon Elmore on 1/13/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SegmentIndex: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        calculate()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        calculate()
    }
    
    func calculate() {
        //get bill
        let bill = Double(billField.text!) ?? 0
        let tipPercentage = defaults.double(forKey: "myTip")
        
        //Calc tip and total
        if SegmentIndex.selectedSegmentIndex == 3{
            var tip = bill * tipPercentage
            var total = bill + tip
            // Update tip and total amount
            tipLabel.text = String(format: "$%.2f",tip)
            totalLabel.text = String(format: "$%.2f",total)
        }
        else{
            let tipPercentages = [0.15, 0.18, 0.2]
            var tip = bill * tipPercentages[SegmentIndex.selectedSegmentIndex]
            var total = bill + tip
        
        // Update tip and total amount
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        }
        }

    @IBAction func tipChanged(_ sender: Any) {
        calculate()
    }
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalcText(_ sender: Any) {
        calculate()
    }
}

