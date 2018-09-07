//
//  CommonFunctionsVC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 22/02/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommonFunctionsVC: UIViewController {
   // var alertController: UIAlertController?
var RegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Rage slider function
    @objc func RangeSlider( minVal : Double, maxVal : Double, lowerVal : Double, upperVal: Double, gapVal : Double) -> NHRangeSliderView
    {
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "RangeBar"), object: nil)
        let rangeSlider = NHRangeSliderView(frame: CGRect(x: 60, y: 10, width: self.view.bounds.width - 100, height: 80) )
        rangeSlider.trackHighlightTintColor = UIColor.black
        rangeSlider.lowerValue = lowerVal
        rangeSlider.upperValue = upperVal
        rangeSlider.gapBetweenThumbs = gapVal
        rangeSlider.minimumValue = minVal
        rangeSlider.maximumValue = maxVal
        
        // set style to follow
        rangeSlider.thumbLabelStyle = .FOLLOW
        
        rangeSlider.titleLabel?.text = "My Budget in lacks:"
        rangeSlider.sizeToFit()
        return rangeSlider
    }
    //Display Alert function
   public func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){
            UIAlertAction in
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let destination = storyboard.instantiateViewController(withIdentifier: "ResidentialSearchVC")
//            self.present(destination, animated: true, completion: nil)
            self.present(myAlert, animated: true, completion: nil)
            //self.dismiss(animated: true, completion: nil)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        if presentedViewController == nil
        {
            self.present(myAlert, animated: true, completion: nil)
        }
        
    }
    // Email validation function
  public func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = RegEx
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
   
}
