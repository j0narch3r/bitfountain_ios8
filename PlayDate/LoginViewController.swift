//
//  LoginViewController.swift
//  PlayDate
//
//  Created by Jonathan Archer on 4/13/15.
//  Copyright (c) 2015 Jonathan Archer. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressedFBLogin(sender: UIButton) {
        PFFacebookUtils.logInWithPermissions(["public_profile", "user_likes", "user_location", "user_friends"], block: {
            user, error in
            if user == nil {
                println("Uh oh. The user cancelled the Facebook Login.")
            }
            else if user.isNew {
                println("User signed up and logged in through Facebook!")
            }
            else {
                println("User logged in through Facebook!")
            }
        })
        
    }

}
