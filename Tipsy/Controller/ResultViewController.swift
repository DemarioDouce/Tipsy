//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Demario Douce on 2020-05-21.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    //UI Elements
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var resultDetailLbl: UILabel!
    
    //Variables
    var result: String?
    var resultDetail: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLbl.text = result
        resultDetailLbl.text = resultDetail

        
    }
    
    @IBAction func recalBtn(_ sender: UIButton) {
     
        //Dismiss the view
        self.dismiss(animated: true, completion: nil)
    }
    
}
