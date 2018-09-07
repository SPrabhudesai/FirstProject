//
//  Forgot_PasswordViewController.swift
//  Profile_Page
//
//  Created by Deeva Infotech LLP on 22/12/17.
//  Copyright © 2017 Deeva Infotech LLP. All rights reserved.
//

import UIKit
 
class Forgot_PasswordViewController: UIViewController {
    
    //MARK: Intilization
    @IBOutlet weak var emailTextField: UITextField!
    var emailValidation = CommonFunctionsVC()
    var backAction = CommonFunctionsVC()
    override func viewDidLoad() {
        super.viewDidLoad()
        hindOnTapped = true
        emailTextField.bottomBorder = 2
         // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: Get Password Button Action
    @IBAction func getPasswordButtonTapped(_ sender: Any) {
        let email = emailTextField.text
        let isEmailAddressValid = emailValidation.isValidEmailAddress(emailAddressString: email!)

        if emailTextField.text?.isEmpty ?? true{
            self.showMessage("Please enter Email", type: .error)
            print(Constants.print.empty)
        }else if isEmailAddressValid
        {
            print(Constants.print.valid)
        } else{
            print(Constants.print.notvalid)
           self.showMessage("Email address is not valid", type: .error)
        }
       
    }
    
    //MARK: Back Button Action
    @IBAction func backButtonTapped(_ sender: Any) {
        let storyBord:UIStoryboard = UIStoryboard(name: "Login", bundle: nil)
        let newViewController = storyBord.instantiateViewController(withIdentifier:Constants.CustomeCellIdentifiers.loginIdentifier) as! Login_ProfileViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    
}
