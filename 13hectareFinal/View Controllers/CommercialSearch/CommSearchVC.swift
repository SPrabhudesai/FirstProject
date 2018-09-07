//
//  CommSearchVC.swift
//  CommercialSearchh
//
//  Created by Deeva Infotech LLP on 19/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommSearchVC: UIViewController {
    @IBOutlet weak var MySegment: UISegmentedControl!
    @IBOutlet weak var CommBuyView: UIView!
    @IBOutlet weak var CommProjectView: UIView!
    @IBOutlet weak var CommLeaseView: UIView!

    
    var currentView : Int = 0
    
    var buyViewController: CommSearchBuyVC?
    var projectViewController: CommSearchProjectVC?
    var leaseViewController: CommSearchLeaseVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        CommBuyView.isHidden = false
        CommProjectView.isHidden = true
        CommLeaseView.isHidden = true
        

        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // you can set this name in 'segue.embed' in storyboard
        if segue.identifier == "commBuySegue" {
            let connectContainerViewController = segue.destination as! CommSearchBuyVC
            buyViewController = connectContainerViewController
        }
        if segue.identifier == "commProjectSegue"{
            let connectContainerViewController = segue.destination as! CommSearchProjectVC
            projectViewController = connectContainerViewController
        }
        if segue.identifier == "commLeaseSegue"{
            let connectContainerViewController = segue.destination as! CommSearchLeaseVC
            leaseViewController = connectContainerViewController
        }
        
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
    
    
    @IBAction func SearchButton(_ sender: UIButton) {
        switch MySegment.selectedSegmentIndex {
        case 0: print( "BuyPriceRangeMin :", buyViewController?.slider1.lowerLabel?.text as Any)
                print( "BuyPriceRangeMax :", buyViewController?.slider1.upperLabel?.text as Any)
                print( "BuyAreaMin :", buyViewController?.slider2.lowerLabel?.text as Any)
                print( "BuyAreaMax  :", buyViewController?.slider2.upperLabel?.text as Any)
                print( "Selected Cell : ", buyViewController?._selectedPropertyTypeCells as Any)
      
        case 1: print( "PojectPriceRangeMin :", projectViewController?.slider1.lowerLabel?.text as Any)
                print( "PojectPriceRangeMax :", projectViewController?.slider1.upperLabel?.text as Any)
                print( "PojectAreaMin :", projectViewController?.slider2.lowerLabel?.text as Any)
                print( "PojectAreaMax  :", projectViewController?.slider2.upperLabel?.text as Any)
                print( "Selected Cell : ", projectViewController?._selectedPropertyTypeCells as Any)
            
        case 2: print( "LeasePriceRangeMin :", leaseViewController?.slider1.lowerLabel?.text as Any)
                print( "LeasePriceRangeMax :", leaseViewController?.slider1.upperLabel?.text as Any)
                print( "LeaseAreaMin :", leaseViewController?.slider2.lowerLabel?.text as Any)
                print( "LeaseAreaMax  :", leaseViewController?.slider2.upperLabel?.text as Any)
                print( "Selected Cell : ", leaseViewController?._selectedPropertyTypeCells as Any)
        default:break
        }
       
    }
    
    @IBAction func SegmentValueChange(_ sender: Any) {
        
        currentView = MySegment.selectedSegmentIndex
        
        switch MySegment.selectedSegmentIndex {
        case 0: CommBuyView.isHidden = false
                CommProjectView.isHidden = true
                CommLeaseView.isHidden = true
        case 1: CommBuyView.isHidden = true
                CommProjectView.isHidden = false
                CommLeaseView.isHidden = true
        case 2: CommBuyView.isHidden = true
                CommProjectView.isHidden = true
                CommLeaseView.isHidden = false
        default: break
        }
    }
}
