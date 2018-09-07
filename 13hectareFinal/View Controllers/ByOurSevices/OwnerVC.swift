//
//  OwnerVC.swift
//  BuyOurServices
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class OwnerVC: UIViewController {

    var ownerListingLabelArray = ["Basic Listing" , "Platinum Listing" , "Owner's Combo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func RequestIngoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "BOSRequestInfoVC")
        self.present(destination, animated: true, completion: nil)
        
    }
}
extension OwnerVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ownerListingLabelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ownerCell", for: indexPath) as! OwnerTableViewCell
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.ownerListingLabel.text = ownerListingLabelArray[indexPath.row]
        cell.btn1.setTitle("Add To Cart", for: .normal)
        cell.btn2.setTitle("Buy Now", for: .normal)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "PRODUCT FOR OWNER"
    }
}
