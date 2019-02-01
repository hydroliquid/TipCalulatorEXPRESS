//
//  ViewController.swift
//  TipCalulatorEXPRESS
//
//  Created by Mike Benton on 1/23/19.
//  Copyright © 2019 Mike Benton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercent: UISegmentedControl!
    
    let defualts = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("appeared")
        
        let currentPercentage = defualts.integer(forKey: "defualt")
        tipPercent.selectedSegmentIndex = currentPercentage
        
    }
    
    
    
    @IBAction func onTap(_ sender: Any) {
        print("hello")
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calulate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipPercent.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    
}

