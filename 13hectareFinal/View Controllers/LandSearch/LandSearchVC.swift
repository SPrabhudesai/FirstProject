//
//  LandSearchVC.swift
//  LandSearch
//
//  Created by Deeva Infotech LLP on 17/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandSearchVC: UIViewController {
    @IBOutlet weak var MySegment: UISegmentedControl!
    @IBOutlet weak var LandBuyView: UIView!
    @IBOutlet weak var LandLeaseView: UIView!
    var currentView : Int = 0
    
    var landBuyVC: LandSearchBuyVC?
    var landLeaseVC: LandSearchLeaseVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LandBuyView.isHidden = false
        LandLeaseView.isHidden = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "landBuySegue"{
            let connectContainerVC = segue.destination as! LandSearchBuyVC
            landBuyVC = connectContainerVC
        }
        if segue.identifier == "landLeaseSegue"{
            let connectContainerVC = segue.destination as! LandSearchLeaseVC
            landLeaseVC = connectContainerVC
        }
        
    }
    @IBAction func BtnBack(_ sender: Any) {
      //  self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func SegmentValueChange(_ sender: UISegmentedControl) {
        currentView = MySegment.selectedSegmentIndex
        switch MySegment.selectedSegmentIndex {
        case 0: LandBuyView.isHidden = false
                LandLeaseView.isHidden = true
        case 1: LandBuyView.isHidden = true
                LandLeaseView.isHidden = false
        default:break
        }
    }
    
    @IBAction func SearchButtonTapped(_ sender: Any) {
        currentView = MySegment.selectedSegmentIndex
        switch MySegment.selectedSegmentIndex {
        case 0: print( "BuyPriceRangeMin :", landBuyVC?.slider1.lowerLabel?.text as Any)
                print( "BuyPriceRangeMax :", landBuyVC?.slider1.upperLabel?.text as Any)
                print( "BuyAreaMin :", landBuyVC?.slider2.lowerLabel?.text as Any)
                print( "BuyAreaMax  :", landBuyVC?.slider2.upperLabel?.text as Any)
                print( "Selected Cell : ", landBuyVC?._selectedPropertyTypeCells as Any)
        case 1: print( "LeasePriceRangeMin :", landLeaseVC?.slider1.lowerLabel?.text as Any)
                print( "LeasePriceRangeMax :", landLeaseVC?.slider1.upperLabel?.text as Any)
                print( "LeaseAreaMin :", landLeaseVC?.slider2.lowerLabel?.text as Any)
                print( "LeaseAreaMax  :", landLeaseVC?.slider2.upperLabel?.text as Any)
                print( "Selected Cell : ", landLeaseVC?._selectedPropertyTypeCells as Any)
        default:break
        }
    }
    
  }
