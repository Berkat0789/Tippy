//
//  TipService.swift
//  Tippy
//
//  Created by Berkat Bhatti on 3/18/21.
//

import Foundation



struct TipService {
    
    var bill: BIll?
    
    mutating func calculateTip(billTotal: Double, groupSize: Int, tipAmount: Double) {
        let tipValue = billTotal * tipAmount
        let total = billTotal + tipValue
        let perPerson = Double(total) / Double(groupSize)
        bill = BIll(groupSize: groupSize, billAmountWTip: tipValue, tipAmount: tipAmount, totalPerPerson: perPerson)
    }
    // Computed properties to access var of type neded
    var tipPercentage: String {
        return String(format: "%.1f", (bill?.tipAmount ?? 0.0) * 100)
    }
    var totalPerPersonString: String {
        return String(format: "%.2f", bill?.totalPerPerson ?? "0.0")
    }
    var billSummary: String {
        return "The payment perperson is \(String(format: "%.2f", bill?.totalPerPerson ?? "0.0")) for a group of \(bill?.groupSize ?? 0) and a tip of \(tipPercentage)%"
    }
    
}
