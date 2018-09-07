//
//  ResiSellNext_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 07/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSellNext_VC: UIViewController {

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
extension ResiSellNext_VC: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 9
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            let ResiNSCell1 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC1", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell1
        case 1:
            let ResiNSCell2 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC2", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell2
        case 2:
            let ResiNSCell3 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC3", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell3
        case 3:
            let ResiNSCell4 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC4", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell4
        case 4:
            let ResiNSCell5 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC5", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell5
        case 5:
            let ResiNSCell6 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC6", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell6
        case 6:
            let ResiNSCell7 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC7", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell7
        case 7:
            let ResiNSCell8 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC8", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell8
        case 8:
            let ResiNSCell9 = tableView.dequeueReusableCell(withIdentifier: "ResiNextSell_VC9", for: indexPath) as! ResiNextSell_VC
            return ResiNSCell9
        default:
            break
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section) {
            case 0: return 120
            case 1: return 294
            case 2: return 110
            case 3: return 110
            case 4: return 155
            case 5: return 108
            case 6: return 121
            case 7: return 110
            case 8: return 61
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch(section){
        case 0: return "Property Price"
        case 1: return "Property Details"
        case 2: return "Property Area"
        case 3: return "Property Floors"
        case 4: return "Parking"
        case 5: return "Transaction Type"
        case 6: return "Availbility"
        case 7: return "Other Details"
        case 8: return "Subscription"
        default: return ""
        }
    }
}
