//
//  PostLandViewController.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class PostLandViewController: UIViewController {
    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var sellView: UIView!
    @IBOutlet weak var rentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sellView.isHidden = false
        self.rentView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BtnBack(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let controller = storybord.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func BtnNext(_ sender: Any) {
        switch mySegment.selectedSegmentIndex {
        case 0:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "LandSellNext_VC") as! LandSellNext_VC
            self.present(destination, animated: true, completion: nil)
        case 1:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "LandRentNext_VC") as! LandRentNext_VC
            self.present(destination, animated: true, completion: nil)
        default:
            break
        }
    }

    @IBAction func mySegment(_ sender: Any) {
       switch mySegment.selectedSegmentIndex{
       case 0:
            sellView.isHidden = false
            rentView.isHidden = true
       case 1:
            sellView.isHidden = true
            rentView.isHidden = false
       default:
            break
        }
    }
    

}
