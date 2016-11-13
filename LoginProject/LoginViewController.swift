//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Veronika Turiničová on 13.11.16.
//  Copyright © 2016 Test comp. All rights reserved.
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
    
    
    @IBAction func SignIn(_ sender: UIButton) {
        print("mail: "+self.emailField.text!)
        print("heslo: "+self.passwordField.text!)
    }
    
    @IBOutlet weak var emailField: UITextField!
   
    @IBOutlet weak var passwordField: UITextField!

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
