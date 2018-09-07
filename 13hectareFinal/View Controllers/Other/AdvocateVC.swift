//
//  AdvocateVC.swift
//  AdvocateOnCallModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class AdvocateVC: UIViewController {
    var AdvImageArray = [UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile")]
    var advNameArray = ["Adv. Das", "Adv. Gupta", "Adv. Suri", "Adv. Ramanandan", "Adv. Patil", "Adv. Joshi"]
    var advContactLabelArray = ["6565263565", "8745214874", "8754521212", "5445627795", "5452179820", "3695240100"]
    var advEmailLabelArray = ["rdsrrs", "ytuhuy", "edsrdfd", "uyghhg", "drtdrd", "bvccvc"]
    var advAddressArray = ["Mumbai", "Pune", "Nashik", "Nagpur", "Latur", "Sangli", "Jalana"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
}
extension AdvocateVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return advNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "advCell", for: indexPath) as! AdvocateTableViewCell
        cell.AdvImage.image = AdvImageArray[indexPath.row]
        cell.advName.text = advNameArray[indexPath.row]
        cell.advContactLabel.text = advContactLabelArray[indexPath.row]
        cell.advEmailLabel.text = advEmailLabelArray[indexPath.row]
        cell.advAddress.text = advAddressArray[indexPath.row]
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "DetailAdvocateVC") as! DetailAdvocateVC
        destination.getImage = AdvImageArray[indexPath.row]!
        destination.getname = advNameArray[indexPath.row]
        destination.getcontact = advContactLabelArray[indexPath.row]
        destination.getemail = advEmailLabelArray[indexPath.row]
        destination.getadd = advAddressArray[indexPath.row]
        //self.navigationController?.pushViewController(destination, animated: true)
        self.present(destination, animated: true, completion: nil)
    }
  
}
