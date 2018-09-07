//
//  ResiRentNext_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 07/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiRentNext_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btn_Back(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let destination = storybord.instantiateViewController(withIdentifier: "PostResiViewController") as! PostResiViewController
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension ResiRentNext_VC: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            let ResiNSCell1 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell1", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell1
        case 1:
            let ResiNSCell2 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell2", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell2
        case 2:
            let ResiNSCell3 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell3", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell3
        case 3:
            let ResiNSCell4 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell4", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell4
        case 4:
            let ResiNSCell5 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell5", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell5
        case 5:
            let ResiNSCell6 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell6", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell6
        case 6:
            let ResiNSCell7 = tableView.dequeueReusableCell(withIdentifier: "ResiNextRent_TableViewCell7", for: indexPath) as! ResiNextRent_TableViewCell
            return ResiNSCell7
        default:
            break
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
            case 0: return 220
            case 1: return 441
            case 2: return 110
            case 3: return 110
            case 4: return 105
            case 5: return 84
            case 6: return 61
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0: return "Property Price"
            case 1: return "Property Details"
            case 2: return "Property Area"
            case 3: return "Property Floors"
            case 4: return "Availbility"
            case 5: return "Other Details"
            case 6: return "Subscription"
        default:
            return ""
        }
    }
}
