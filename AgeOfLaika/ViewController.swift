//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Jonathan Archer on 4/7/15.
//  Copyright (c) 2015 Jonathan Archer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        let humanYears = humanYearsTextField.text.toInt()!
        dogYearsLabel.text = "Laika is " + "\(humanYears * 7)" + " in human Years"
        dogYearsLabel.hidden = false
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }

 
    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        
        let stringFromTextField = humanYearsTextField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else {
            realDogYears = doubleFromTextField * 10.5
        }
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "Laika is " + "\(realDogYears)" + " in real human years."
        
        
        
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder()
    }
}

