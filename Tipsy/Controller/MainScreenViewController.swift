//
//  MainScreenViewController.swift
//  Tipsy
//
//  Created by Demario Douce on 2020-05-21.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    //UI elements
    @IBOutlet weak var billTotalTbx: UITextField!
    @IBOutlet weak var splitNum: UILabel!
    @IBOutlet weak var tipSelectedBtn1: UIButton!
    @IBOutlet weak var tipSelectedBtn2: UIButton!
    @IBOutlet weak var tipSelectedBtn3: UIButton!
    
    //Variables
    var billTotal: Float?
    var tipPercentage = 0.0
    var splitNumVal = 0
    var billTotalCal = 0.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    //First tip btn
    @IBAction func tipSelected1(_ sender: UIButton) {
        
        sender.isSelected = true
        tipSelectedBtn2.isSelected = false
        tipSelectedBtn3.isSelected = false
        
        
        tipPercentage = 0.0
        
        print(tipPercentage)
    }
    
    //Second tip btn
    @IBAction func tipSelected2(_ sender: UIButton) {
        
        sender.isSelected = true
        tipSelectedBtn1.isSelected = false
        tipSelectedBtn3.isSelected = false
        
        tipPercentage = 0.1
        
        print(tipPercentage)
    }
    
    //Third tip btn
    @IBAction func tipSelected3(_ sender: UIButton) {
        
        sender.isSelected = true
        tipSelectedBtn1.isSelected = false
        tipSelectedBtn2.isSelected = false
        
        tipPercentage = 0.2
        
        print(tipPercentage)
    }
    
    
    
    //Func to increase or decrease the splitNum
    @IBAction func splitValueSelecter(_ sender: UIStepper) {
        
        splitNumVal =  Int(sender.value)
        splitNum.text = splitNumVal.description
        
    }
    
    //Func it does what it states which is calculate
    @IBAction func CalBtn(_ sender: UIButton) {
        
        billTotal = Float(billTotalTbx.text!)
        
        print(billTotal ?? 0.0)
        
        //Open segue
        self.performSegue(withIdentifier: "showResult", sender: self)
    }
    
    //Notifies the view controller that a segue is about to be performed.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResult"{
            
            let destinationVC = segue.destination as! ResultViewController
            
        }
    }
    
}
