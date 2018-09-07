//
//  ResiSearchAmenitiesPopUpVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 25/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchAmenitiesPopUpVC: UIViewController {
    var AmenityLabelArray = ["Intercom Facility", "Lifts", "Park", "Swimming Pool", "Piped gas", "Internet Wifi connectivity", "Fitness Center/Gym", "Club House/Community Center"]
    var AmenityImageArray = [UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q"), UIImage(named:"Q")]
    override func viewDidLoad() {
        super.viewDidLoad()
        showAnimate()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func CloseButton(_ sender: Any) {
        removeAnimate()
    }
    
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
}
extension ResiSearchAmenitiesPopUpVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AmenityLabelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "amenityCell", for: indexPath) as! ResiSearchAmenityPopUpTableViewCell
        cell.AmenityImage.image = AmenityImageArray[indexPath.row]
        cell.AmenityLabel.text = AmenityLabelArray[indexPath.row]
        return cell
    }
    
    
}
