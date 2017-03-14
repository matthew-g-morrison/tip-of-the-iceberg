//
//  ViewController.swift
//  tipcalc
//
//  Created by Matthew on 3/13/17.
//  Copyright © 2017 Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        if let defaultTipIndex = UserDefaults.standard.object(forKey: "defaultTipIndex") as? Int {
            tipPercentControl.selectedSegmentIndex = defaultTipIndex
        }
        else {
            tipPercentControl.selectedSegmentIndex = 0
        }
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.22]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipPercentControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
 }

