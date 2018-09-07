//
//  ExtendDurationVC.swift
//  ManageEditListingModule
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class ExtendDurationVC: UIViewController {

    @IBOutlet weak var ListingTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture3 : UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(extend(tapGesture:)))
        tapGesture3.delegate = self as? UIGestureRecognizerDelegate
        ListingTextfield.isUserInteractionEnabled = true
        ListingTextfield.addGestureRecognizer(tapGesture3)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func extend(tapGesture:UITapGestureRecognizer){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ExtendPopUpVC") as! ExtendPopUpVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func btnBack(_ sender: UIButton) {
        let stotyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = stotyboard.instantiateViewController(withIdentifier: "ManageEditListingVC")
        self.present(destination, animated: true, completion: nil)
    }
}
