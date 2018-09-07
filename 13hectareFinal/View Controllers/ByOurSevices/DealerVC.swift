//
//  DealerVC.swift
//  BuyOurServices
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class DealerVC: UIViewController {
     var DealerListingLabelArray = ["Platinum Listing" , "Platinum Listing Pack" , "Featured Listings" , "Dealer In Focus" , "New Projects" , "Featured Projects" , "Property Gallery" , "Banners"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func RequestInfoButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "BOSRequestInfoVC")
        self.present(destination, animated: true, completion: nil)
    }
    
    
  }
extension DealerVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DealerListingLabelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dealerCell", for: indexPath) as! DealerTableViewCell
        cell.DealerListingLabel.text = DealerListingLabelArray[indexPath.row]
        cell.layer.borderWidth = 3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        if indexPath.row == 0{
            cell.btn1.setTitle("Add To Cart", for: .normal)
            cell.btn2.setTitle("Buy Now", for: .normal)
        }
        else {
            cell.btn1.setTitle("View Sample", for: .normal)
            cell.btn2.setTitle("Request Info", for: .normal)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "PRODUCT FOR DEALER"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    
}
