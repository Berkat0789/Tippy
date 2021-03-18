//
//  ResultsVC.swift
//  Tippy
//
//  Created by Berkat Bhatti on 3/18/21.
//

import UIKit

class ResultsVC: UIViewController {

    @IBOutlet weak var totalAmountLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    
    var total: String?
    var summary: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalAmountLabel.text = total
        summaryLabel.text = summary
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
