//
//  SignUpViewController.swift
//  LoginProject
//
//  Created by Veronika Turiničová on 13.11.16.
//  Copyright © 2016 Test comp. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue) {
    
    }
    
    
    @IBAction func SignUp(_ sender: UIButton) {
        print("mail: "+self.emailTextField.text!)
        print("heslo: "+self.passwordTextField.text!)
    }

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
