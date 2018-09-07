//
//  ResidentialSearchVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 15/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResidentialSearchVC: UIViewController {
    
    @IBOutlet weak var MySegment: UISegmentedControl!
    @IBOutlet weak var BuyView: UIView!
    @IBOutlet weak var ProjectView: UIView!
    @IBOutlet weak var RentView: UIView!
    
    var currentView : Int = 0
    
    var resiBuyVC: ResiSearchBuyVC?
    var resiProjectVC: ResiSearchProjectVC?
    var resiRentVC: ResiSearchRentVC?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // to display buyview bydefault
        BuyView.isHidden = false
        ProjectView.isHidden = true
        RentView.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resiBuySegue"{
            let connectContainerVC = segue.destination as! ResiSearchBuyVC
            resiBuyVC = connectContainerVC
        }
        if segue.identifier == "resiProjectSegue"{
            let connectContainerVC = segue.destination as! ResiSearchProjectVC
            resiProjectVC = connectContainerVC
        }
        if segue.identifier == "resiRentSegue"{
            let connectContainerVC = segue.destination as! ResiSearchRentVC
            resiRentVC = connectContainerVC
        }
        
    }
    
    @IBAction func BtnBack(_ sender: Any) {
      //  self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    
    @IBAction func SegmentValueChange(_ sender: Any) {
        currentView = MySegment.selectedSegmentIndex
        switch MySegment.selectedSegmentIndex {
        case 0: BuyView.isHidden = false
                ProjectView.isHidden = true
                RentView.isHidden = true
        case 1: BuyView.isHidden = true
                ProjectView.isHidden = true
                RentView.isHidden = false
        case 2: BuyView.isHidden = true
                ProjectView.isHidden = false
                RentView.isHidden = true
        default:break
        }
    }
    
    @IBAction func searchButton(_ sender: Any) {
        currentView = MySegment.selectedSegmentIndex
        switch (MySegment.selectedSegmentIndex) {
        case 0:
               print( "BuyPriceRangeMin :", resiBuyVC?.slider.lowerLabel?.text as Any)
               print( "BuyPriceRangeMax :", resiBuyVC?.slider.upperLabel?.text as Any)
               print( "Selected Property Cell : ", resiBuyVC?._selectedPropertyTypeCells as Any)
               print( "Selected Bedroom Cell : ", resiBuyVC?._selectedPropertyTypeCells1 as Any)
        case 1:
               print( "ProjectPriceRangeMin :", resiProjectVC?.slider.lowerLabel?.text as Any)
               print( "ProjectPriceRangeMax :", resiProjectVC?.slider.upperLabel?.text as Any)
               print( "Selected Cell : ", resiProjectVC?._selectedPropertyTypeCells as Any)
               print( "Selected Bedroom Cell : ", resiBuyVC?._selectedPropertyTypeCells1 as Any)
        case 2:
               print( "RentPriceRangeMin :", resiRentVC?.slider.lowerLabel?.text as Any)
               print( "RentPriceRangeMax :", resiRentVC?.slider.upperLabel?.text as Any)
               print( "Selected Cell : ", resiRentVC?._selectedPropertyTypeCells as Any)
               print( "Selected Bedroom Cell : ", resiBuyVC?._selectedPropertyTypeCells1 as Any)
        default:break
        }
    }
}
