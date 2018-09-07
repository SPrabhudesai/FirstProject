//
//  Login_ProfileViewController.swift
//  Profile_Page
//
//  Created by Deeva Infotech LLP on 20/12/17.
//  Copyright © 2017 Deeva Infotech LLP. All rights reserved.
//

import UIKit
import GSMessages
class Login_ProfileViewController: UIViewController, UITextFieldDelegate {
    //MARK: Initilization
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var gmailButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    var RegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    @IBOutlet weak var errorText: UILabel!
    // var count = Int.self

    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 5
        facebookButton.layer.cornerRadius = 5
        gmailButton.layer.cornerRadius = 5
        registerButton.layer.cornerRadius = 5
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        //self.keybordHide()
        // Do any additional setup after loading the view.
    }
    
   
    //MARK: Email validation Function
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = RegEx
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    //MARK: Button Actions
        //1. Forgot Button Action
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        let storyBord:UIStoryboard = UIStoryboard(name:"Login", bundle: nil)
        let newViewController = storyBord.instantiateViewController(withIdentifier:Constants.CustomeCellIdentifiers.forgotIdentifier) as! Forgot_PasswordViewController
        self.present(newViewController, animated: true, completion: nil)
    }
    @IBAction func btn_Back(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let destionation = storybord.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destionation, animated: true, completion: nil)
    }
    //2.Login Button Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let username = emailTextField.text
        let password = passwordTextField.text
        let isEmailAddressValid = isValidEmailAddress(emailAddressString: username!)
        if((username?.isEmpty)! || username == nil){
            self.showMessage("Please Enter Email", type: .error)
        }
        else if((password?.isEmpty)! || password == nil){
            self.showMessage("Please Enter Password", type: .error)
        }
        else if(isEmailAddressValid){
            self.showMessage("Login Sussfully", type: .success)
        }
        else{
            self.showMessage("Please Enter correct Email", type: .error)
        }
    }
    
        //3.Register Button Action
    @IBAction func registerButtonTapped(_ sender: UIButton) {
       // sender.pulsate()
        let storyBord:UIStoryboard = UIStoryboard(name:"Login", bundle: nil)
        let newViewController = storyBord.instantiateViewController(withIdentifier:"Register_PageViewController") as! Register_PageViewController
        self.present(newViewController, animated: true, completion: nil)
        print(Constants.print.register)
    }
    
    //MARK: Keybord Functions
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if emailTextField.resignFirstResponder(){
            passwordTextField.becomeFirstResponder()

        }else{
            passwordTextField.becomeFirstResponder()
        }
        return true
    }
  

}


