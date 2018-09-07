//
//  MyPreferancesVC.swift
//  MyPreferances
//
//  Created by Deeva Infotech LLP on 18/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class MyPreferancesVC: UIViewController {
    @IBOutlet weak var MySegment: UISegmentedControl!
    @IBOutlet weak var PreferancesBuyView: UIView!
    @IBOutlet weak var PreferancesRentView: UIView!
    
    var alert : CommonFunctionsVC?

    var currentView : Int = 0
    
    var preferanceBuyVC: MyPreferancesBuyVC?
    var preferanceRentVC: MyPreferancesRentVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PreferancesBuyView.isHidden = false
        PreferancesRentView.isHidden = true
        
        //alert?.Alert(message: "good")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "preferanceBuySegue"{
            let connectContainerVC = segue.destination as! MyPreferancesBuyVC
            preferanceBuyVC = connectContainerVC
        }
        if segue.identifier == "preferanceRentSegue"{
            let connectContainerVC = segue.destination as! MyPreferancesRentVC
            preferanceRentVC = connectContainerVC
        }
    }
    
    @IBAction func BtnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func SegmentValueChange(_ sender: Any) {
        currentView = MySegment.selectedSegmentIndex
        switch MySegment.selectedSegmentIndex {
        case 0: PreferancesBuyView.isHidden = false
                PreferancesRentView.isHidden = true
        case 1: PreferancesBuyView.isHidden = true
                PreferancesRentView.isHidden = false
        default:break
        }
    }
    
    @IBAction func SearchButton(_ sender: Any) {
        switch MySegment.selectedSegmentIndex {
            
        case 0: self.alert?.displayAlertMessage(userMessage: "print")
                print( "BuyPriceRangeMin :", preferanceBuyVC?.slider.lowerLabel?.text as Any)
                print( "BuyPriceRangeMax :", preferanceBuyVC?.slider.upperLabel?.text as Any)
                print( "Selected Property Cell : ", preferanceBuyVC?._selectedPropertyTypeCells as Any)
                print( "Selected Bedroom Cell : ", preferanceBuyVC?._selectedPropertyTypeCells1 as Any)
                print( "Selected Status Cell : ", preferanceBuyVC?._selectedPropertyTypeCells2 as Any)
        case 1: print( "BuyPriceRangeMin :", preferanceRentVC?.slider.lowerLabel?.text as Any)
                print( "BuyPriceRangeMax :", preferanceRentVC?.slider.upperLabel?.text as Any)
                print( "Selected Property Cell : ", preferanceRentVC?._selectedPropertyTypeCells as Any)
                print( "Selected Bedroom Cell : ", preferanceRentVC?._selectedPropertyTypeCells1 as Any)
                print( "Selected Status Cell : ", preferanceRentVC?._selectedPropertyTypeCells2 as Any)
        default:break
        }
    }
}
