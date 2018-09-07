//
//  AboutUsVC.swift
//  Final
//
//  Created by Deeva Infotech on 22/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class AboutUsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func GoTOTerms(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "TermsAndConditionsVC")
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func GoToPrivatePolicy(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "PrivatePolicyVC")
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func GoToLegal(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "LegalInformationVC")
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension AboutUsVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
        let headingCell = tableView.dequeueReusableCell(withIdentifier: "headingCell", for: indexPath) as! AboutUsTableViewCell
            headingCell.HeadingLabel.text = "13 hectare"
            headingCell.VersionLabel.text = "App Version 1.0"
        return headingCell
        }
        else if indexPath.section == 1 {
        let descriptionCell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell", for: indexPath) as! AboutUsTableViewCell
            descriptionCell.DescriptionLabel.text = "13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare 13 hectare"
            return descriptionCell
        }
        else if indexPath.section == 2 {
        let tndcCell = tableView.dequeueReusableCell(withIdentifier: "tndcCell", for: indexPath) as! AboutUsTableViewCell
           // tndcCell.TndCLabel.text = "Terms and Conditions"
            return tndcCell
        }
        else if indexPath.section == 3 {
        let privateCell = tableView.dequeueReusableCell(withIdentifier: "privateCell", for: indexPath) as! AboutUsTableViewCell
           // privateCell.PrivatePolicyLabel.text = "Private Policy"
            return privateCell
        }
        else if indexPath.section == 4 {
        let legalCell = tableView.dequeueReusableCell(withIdentifier: "legalCell", for: indexPath) as! AboutUsTableViewCell
            //legalCell.LegalInfoLabel.text = "Legal Information"
            return legalCell
        }
        else{
        let contactCell = tableView.dequeueReusableCell(withIdentifier: "contactCell") as!
        AboutUsTableViewCell
        contactCell.ContactLabel.text = "For any concerns/Quetions/Grievances kindly email us at ----------"
        return contactCell
    
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 170
        }
        if indexPath.section == 1{
            return 250
        }
        if indexPath.section == 2{
            return 50
        }
        if indexPath.section == 3{
            return 50
        }
        if indexPath.section == 4{
            return 50
        }
        if indexPath.section == 5{
            return 70
        }
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            self.performSegue(withIdentifier: "PPSegue", sender: self)

        }
}
