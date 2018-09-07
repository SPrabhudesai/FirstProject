//
//  PostResiViewController.swift
//  postResi
//
//  Created by Deeva Infotech on 27/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class PostResiViewController: UIViewController {

    @IBOutlet weak var mySegment: UISegmentedControl!
    @IBOutlet weak var sellView: UIView!
    @IBOutlet weak var rentView: UIView!
    var send = [Residental_Sell_RA]()
    var rentController: Resi_Rent_ViewController?
    var sellController: Resi_Sell_ViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        sellView.isHidden = false
        rentView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func mySegment(_ sender: Any) {
        switch mySegment.selectedSegmentIndex {
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sellResiSegue"{
            let connectContainerVC = segue.destination as! Resi_Sell_ViewController
            sellController = connectContainerVC
        }
        if segue.identifier == "renrResiSegue"{
            let connectContainerVC = segue.destination as! Resi_Rent_ViewController
            rentController = connectContainerVC
        }
    }
    
    @IBAction func BtnNext(_ sender: Any) {
        switch mySegment.selectedSegmentIndex  {
        case 0:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "ResiSellNext_VC") as! ResiSellNext_VC
            self.present(destination, animated: true, completion: nil)
        case 1:
            let storybord = UIStoryboard(name: "Main", bundle: nil)
            let destination = storybord.instantiateViewController(withIdentifier: "ResiRentNext_VC") as! ResiRentNext_VC
            self.present(destination, animated: true, completion: nil)
        default:
            break
        }
        
    }
    
    
}
