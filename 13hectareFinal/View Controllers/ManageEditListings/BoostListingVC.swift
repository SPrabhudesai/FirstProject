//
//  BoostListingVC.swift
//  ManageEditListingModule
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class BoostListingVC: UIViewController {

    @IBOutlet weak var ChooseSubTexrfeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture2 : UITapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(boost(tapGesture:)))
        tapGesture2.delegate = self as? UIGestureRecognizerDelegate
        ChooseSubTexrfeild.isUserInteractionEnabled = true
        ChooseSubTexrfeild.addGestureRecognizer(tapGesture2)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func boost(tapGesture:UITapGestureRecognizer){
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "BoostPopUpVC") as! BoostPopUpVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
      }
    
    @IBAction func btnBack(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        let stotyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = stotyboard.instantiateViewController(withIdentifier: "ManageEditListingVC")
        self.present(destination, animated: true, completion: nil)
    }
}
