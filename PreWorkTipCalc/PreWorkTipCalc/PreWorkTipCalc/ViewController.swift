//
//  ViewController.swift
//  PreWorkTipCalc
//  Tip Calculator for CodePath.org iOS course :).
//  Created by Christopher Artrip on 12/19/20.
//

import UIKit

class ViewController: UIViewController {
    //TExt Field for user to enter bill
    @IBOutlet weak var billAmountTextField: UITextField!
    //Text field for the amount of people paying
    @IBOutlet weak var numOfPeople: UITextField!
    //Presents the price of the tip
    @IBOutlet weak var tipPercentageLabel: UILabel!
    //Presents the total after adding tip to the bill
    @IBOutlet weak var totalLabel: UILabel!
    //Segment control for the tip percentage
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitTotalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get initial bill amount and calculate tips
        let bill = Double(billAmountTextField.text!) ?? 0
        let people = Double(numOfPeople.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        
        //calculate the total with tip
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Calculate the value of the tip after split
        let splitTotal = ((bill + tip) / people)
        
        //Update the tip label
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        //Update the total label
        totalLabel.text = String(format: "$%.2f", total)
        //Update the split total label
        splitTotalLabel.text = String(format: "$%.2f", splitTotal)
        
    }
    
}

