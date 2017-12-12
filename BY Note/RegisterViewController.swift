//
//  RegisterViewController.swift
//  BY Note
//
//  Created by Johnny bian on 2017/12/7.
//  Copyright © 2017年 Johnny bian Peirun Yu. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {


    @IBOutlet weak var userEmailField: UITextField!
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        let userName = userNameTextField.text
        let userEmail = userEmailField.text
        let userPassword = passwordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        // check for empty field
        if ((userName?.isEmpty)! ||  (userEmail?.isEmpty)! || (userPassword?.isEmpty)! || (repeatPassword?.isEmpty)!){
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        if (userPassword != repeatPassword){
            displayMyAlertMessage(userMessage: "Password no match")
            return
        }
     // Store data
        UserDefaults.standard.set(userName, forKey: "userName")
        UserDefaults.standard.set(userEmail, forKey: "userEmail")
        UserDefaults.standard.set(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize()
    // Display alert message
        let myAlert = UIAlertController(title:"Alert",message:"Registration is successful, Think you!", preferredStyle: .alert)
        let okAction = UIAlertAction(title:"Ok",style:.default){
            action in
            self.dismiss(animated: true, completion: nil)
        }
        myAlert.addAction(okAction)
        present(myAlert,animated: true,completion:nil)
    }
   
     
    
    
    // display alert
    func displayMyAlertMessage(userMessage: String){
        let myAlert = UIAlertController(title:"Alert",message:userMessage, preferredStyle: .alert)
        let okAction = UIAlertAction(title:"Ok",style:.default,handler: nil)
        myAlert.addAction(okAction)
        present(myAlert,animated: true,completion:nil)
    }

}
