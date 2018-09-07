//
//  FeedBackViewController.swift
//  FeedbackModule
//
//  Created by Deeva Infotech LLP on 01/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class FeedBackViewController: UIViewController {
    @IBOutlet weak var FeedbackTextField: UITextField!
    @IBOutlet weak var CountryCodeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture2 : UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(boost(tapGesture:)))
        tapGesture2.delegate = self as? UIGestureRecognizerDelegate
        FeedbackTextField.isUserInteractionEnabled = true
        FeedbackTextField.addGestureRecognizer(tapGesture2)

        let tapGesture1 : UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(boost1(tapGesture:)))
        tapGesture1.delegate = self as? UIGestureRecognizerDelegate
        CountryCodeTextField.isUserInteractionEnabled = true
        CountryCodeTextField.addGestureRecognizer(tapGesture1)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnBack(_ sender: Any) {
       // self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    @objc func boost(tapGesture:UITapGestureRecognizer){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FeedbackListVC") as! FeedbackListVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @objc func boost1(tapGesture:UITapGestureRecognizer){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CountryCodeVC") as! CountryCodeVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
}
