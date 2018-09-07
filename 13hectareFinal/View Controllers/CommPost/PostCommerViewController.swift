//
//  PostCommerViewController.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class PostCommerViewController: UIViewController {

    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var sellView: UIView!
    @IBOutlet weak var leaseView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sellView.isHidden = false
        self.leaseView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mySegment(_ sender: Any) {
        switch mySegment.selectedSegmentIndex {
        case 0:
            sellView.isHidden = false
            leaseView.isHidden = true
        case 1:
            sellView.isHidden = true
            leaseView.isHidden = false
        default:
            break
        }
    }
    
    
    @IBAction func BtnNext(_ sender: Any) {
        switch mySegment.selectedSegmentIndex {
        case 0:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "CommSellNext_VC") as! CommSellNext_VC
            self.present(destination, animated: true, completion: nil)
        case 1:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "CommLeaseNext_VC") as! CommLeaseNext_VC
            self.present(destination, animated: true, completion: nil)
        default:
            break
        }
    }
    
    
    
    @IBAction func BtnBack(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let controller = storybord.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(controller, animated: true, completion: nil)
    }
    

}
