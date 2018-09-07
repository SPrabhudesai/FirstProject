//
//  Register_PageViewController.swift
//  Profile_Page
//
//  Created by Deeva Infotech LLP on 20/12/17.
//  Copyright © 2017 Deeva Infotech LLP. All rights reserved.
//

import UIKit
import GSMessages

class Register_PageViewController: UIViewController {
    
    //MARK: Initilazation
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    var RegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    @IBOutlet weak var errorText: UILabel!
    var emailValidation = CommonFunctionsVC()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Button Actions
        //1].T&C Button Action
    @IBAction func TermConditionButtonTapped(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let destination = storybord.instantiateViewController(withIdentifier: "TermsAndConditionsVC") as! TermsAndConditionsVC
        self.present(destination, animated: true, completion: nil)
    }
        //2 Back Button Action
    @IBAction func backButtonTapped(_ sender: Any) {
        let storybord = UIStoryboard(name: "Login", bundle: nil)
        let destination = storybord.instantiateViewController(withIdentifier: "Login_ProfileViewController") as! Login_ProfileViewController
        self.present(destination, animated: true, completion: nil)
        
    }
        //3]. Policy Button Action
    @IBAction func passwordPolicyButtonTapped(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Login", bundle: nil).instantiateViewController(withIdentifier: "password_policyViewController") as! password_policyViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
        //4]. Register Button Action
    @IBAction func registerButtonTapped(_ sender: Any) {
        let name = nameTextField.text
        let email = emailTextField.text
        let mobile = mobileNumberTextField.text
        let password = passwordTextField.text
        let repeatPassword = repeatPasswordTextField.text
        let isEmailAddressValid = emailValidation.isValidEmailAddress(emailAddressString: email!)
       
        if((name?.isEmpty)! || email == nil){
            self.showMessage("Please Enter Name", type: .error)
        }
        else if((email?.isEmpty)! || email == nil){
            self.showMessage("Please Enter Email", type: .error)
        }
        else if((mobile?.isEmpty)! || mobile == nil){
            self.showMessage("Please Enter Mobile Number", type: .error)
        }
        else if((password?.isEmpty)! || password == nil){
            self.showMessage("Please Enter Password", type: .error)
        }
        else if(password != repeatPassword){
            self.showMessage("Password Not Match", type: .error)
        }
        else if(isEmailAddressValid){
            self.showMessage("Register Sucess", type: .success)
            let storybord = UIStoryboard(name: "Login", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "Login_ProfileViewController") as! Login_ProfileViewController
            self.present(destination, animated: true, completion: nil)
        }
        else{
            self.showMessage("Please Enter valid Email", type: .error)
        }
    }
  
    
 
    //MARK: Hide keybord
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          nameTextField.resignFirstResponder()
          emailTextField.resignFirstResponder()
          mobileNumberTextField.resignFirstResponder()
          passwordTextField.resignFirstResponder()
          repeatPasswordTextField.resignFirstResponder()
        return true
    }
    
}
