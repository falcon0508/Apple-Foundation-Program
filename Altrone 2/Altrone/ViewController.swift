//
//  ViewController.swift
//  Altrone
//
//  Created by Evan Tanuwijaya on 04/07/19.
//  Copyright © 2019 Evan Tanuwijaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextF: UITextField!
    
    @IBOutlet weak var passwordTextF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func loginButton(_ sender: Any) {
        if ((usernameTextF.text?.contains("admin"))! && (passwordTextF.text?.contains("admin"))!)
        {
            NSLog("Login Successful")
//            performSegue(withIdentifier: "loginSuccess", sender: nil)
        }else{
            
            NSLog("Login failed")
        }
    }
    
}

