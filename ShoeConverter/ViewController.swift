//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Jonathan Archer on 4/7/15.
//  Copyright (c) 2015 Jonathan Archer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: AnyObject) {
        
        var sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)"
        
        mensShoeSizeTextField.resignFirstResponder()
        mensShoeSizeTextField.text = ""
    }

}

