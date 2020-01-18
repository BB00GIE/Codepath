//
//  SettingsViewController.swift
//  TippyCal
//
//  Created by Brandon Elmore on 1/16/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var DefaultTipField: UITextField!
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ChangeDefaultTip(_ sender: Any) {
        var tipPercent = Double(DefaultTipField.text!) ?? 0.1
        tipPercent = tipPercent / 100
        defaults.set(tipPercent, forKey: "myTip")
        
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
