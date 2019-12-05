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
        let catAge = Int(floor(Double(txtAge.text!) ?? 0)) * 7;
        
        if catAge == 0 {
            alert("Please Enter a Number")
        } else {
            lblOutput.text = "Your Cat is\n\(catAge) Cat-Years Old";
        }
    }
    
    func alert(_ stringMessage: String){
        let ac = UIAlertController(title: "Cat Age Conversion", message: stringMessage, preferredStyle: UIAlertController.Style.alert)
        
        ac.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(ac, animated: true, completion: nil)
    }
    
}

