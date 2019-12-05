//
//  ViewController.swift
//  CatYears
//
//  Created by Alan Van Art on 12/5/19.
//  Copyright © 2019 Alan Van Art. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblOutput: UILabel!
    @IBOutlet weak var txtAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblOutput.text = "";
    }

    @IBAction func btnCalculate(_ sender: Any) {
        let stringAge = txtAge.text ?? "";
        let humanAge = Int(stringAge) ?? 0;
        let catAge = humanAge * 7;
        lblOutput.text = "Your Cat is\n\(catAge) Cat-Years Old";
    }
    
}

