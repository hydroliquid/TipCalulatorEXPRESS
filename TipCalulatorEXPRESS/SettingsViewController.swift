//
//  SettingsViewController.swift
//  TipCalulatorEXPRESS
//
//  Created by MICHAEL BENTON on 1/31/19.
//  Copyright © 2019 Mike Benton. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defualtPercent: UISegmentedControl!
    
    let defualts = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appeared")
        saveSettings()
    }
    
    
    
    @IBAction func DefualtTipPercentage(_ sender: UISegmentedControl) {
        let currentPercentage = defualtPercent.selectedSegmentIndex
        defualts.set(currentPercentage, forKey: "settingsDefualt")
        defualts.set(currentPercentage, forKey: "defualt")
        
        defualts.synchronize()
    }
    
    func saveSettings() {

        var settingsDefualt = defualts.integer(forKey: "settingsDefualt")
        settingsDefualt = 0
        defualtPercent.selectedSegmentIndex = settingsDefualt
        

        defualts.synchronize()
        
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
