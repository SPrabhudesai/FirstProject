//
//  ResiSearchNextVC.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech on 23/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class ResiSearchNextVC: UIViewController {
    var PropertyImageArray = [UIImage(named:"flat5"),UIImage(named:"flat6"),UIImage(named:"flat12"),UIImage(named:"flat5")]
    var CostLabelArray = ["10 Lack","40 Lack","50 Lack"," 40 Lack"]
    var ProjectLebelArray = ["Shree Ganeshm","Paranjape","GK","GK"]
    var AddressLabelArray = ["Kothrud","Bavdhan","Karve Road","Baner"]
    var BhkLabelArray = ["1 BHK Apartment","2 BHK","2 BHK Apartment","2 BHK"]
    var PostedByLabelArray = ["Dealer","Owner","Dealer","Dealer"]
    var PostedOnLabelArray = ["Yesterday","20 Dec 2017","15 dec 2017","today"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){
            UIAlertAction in
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "ResidentialSearchVC")
           self.present(destination, animated: true, completion: nil)
        }
        
       let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        if presentedViewController == nil
        {
            present(myAlert, animated: true, completion: nil)
        }
        
    }
    
    @IBAction func SortByButtonTapped(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SortByPopUpVC") as! SortByPopUpVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func btnBack(_ sender: Any) {
        displayAlertMessage(userMessage: "Would you like to go back")
        //self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func btnFilter(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let destination = storyboard.instantiateViewController(withIdentifier: "FilterViewController")
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension ResiSearchNextVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CostLabelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resiSearchNext", for: indexPath) as! ResiSearchNextTableViewCell
        cell.PropertyImage.image = PropertyImageArray[indexPath.row]
        cell.CostLabel.text = CostLabelArray[indexPath.row]
        cell.ProjectLebel.text = ProjectLebelArray[indexPath.row]
        cell.AddressLabel.text = AddressLabelArray[indexPath.row]
        cell.BhkLabel.text = BhkLabelArray[indexPath.row]
        cell.PostedOnLabel.text = PostedOnLabelArray[indexPath.row]
        cell.PostedByLabel.text = PostedByLabelArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         self.performSegue(withIdentifier: "Amenitysegue", sender: self)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return PropertyImageArray.count
    }
}
