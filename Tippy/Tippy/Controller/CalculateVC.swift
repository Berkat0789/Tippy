//
//  ViewController.swift
//  Tippy
//
//  Created by Berkat Bhatti on 3/18/21.
//

import UIKit

class CalculateVC: UIViewController {

    @IBOutlet weak var billValueLabel: UITextField!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButtton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var partySizeStepper: UIStepper!
    @IBOutlet weak var partySizeLabel: UILabel!
    
    var tip = 0.0
    var total = 0.0
    // Computed property to keep a whole number value of the stepper
    // instead of a double
    var stepperIntValue: Int {
        return Int(partySizeStepper.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipSelected(_ sender: UIButton) {
        // This will drop the percent sign on the value
        // Use a if let here to make sure the current title is not nil
        if let currentTitle = sender.currentTitle {
            let selectedValue = Double(String(currentTitle.dropLast()))
            tip = (selectedValue ?? 0.0) / 100
        }
     
    }
    
    @IBAction func stepperSelected(_ sender: UIStepper) {
        partySizeLabel.text = "\(stepperIntValue)"
    }
    @IBAction func calculatePressed(_ sender: Any) {
        // will run calculation for the tip as well as the cost person
        // Assuming that teveryone has agreed to splitthe bill evenly
        if let billAmt = Double(billValueLabel.text!) {
            let partySize = stepperIntValue
            let tipAmount = billAmt * tip
            total = (billAmt + tipAmount) / Double(partySize)
            print(total)
            self.billValueLabel.text = ""
            
        }
    }
    
}

