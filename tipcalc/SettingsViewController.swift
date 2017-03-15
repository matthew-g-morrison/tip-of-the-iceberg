//
//  SettingsViewController.swift
//  tipcalc
//
//  Created by Matthew on 3/13/17.
//  Copyright © 2017 Matthew. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let defaultTipIndex = UserDefaults.standard.object(forKey: "defaultTipIndex") as? Int {
            defaultTipControl.selectedSegmentIndex = defaultTipIndex
        }
        else {
            defaultTipControl.selectedSegmentIndex = 0
        }
    }

    @IBAction func changeDefaultTip(_ sender: Any) {
        UserDefaults.standard.set(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipIndex")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
