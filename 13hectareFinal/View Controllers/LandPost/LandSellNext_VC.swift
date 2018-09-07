//
//  LandSellNext_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 07/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandSellNext_VC: UIViewController {

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
        let destination = storybord.instantiateViewController(withIdentifier: "PostLandViewController") as! PostLandViewController
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension LandSellNext_VC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            let LandNSCell1 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell1", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell1
        case 1:
            let LandNSCell2 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell2", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell2
        case 2:
            let LandNSCell3 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell3", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell3
        case 3:
            let LandNSCell4 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell4", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell4
        case 4:
            let LandNSCell5 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell5", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell5
        case 5:
            let LandNSCell6 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell6", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell6
        case 6:
            let LandNSCell7 = tableView.dequeueReusableCell(withIdentifier: "LandNextSell_TableViewCell7", for: indexPath) as! LandNextSell_TableViewCell
            return LandNSCell7
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section) {
            case 0: return 110
            case 1: return 65
            case 2: return 110
            case 3: return 52
            case 4: return 110
            case 5: return 106
            case 6: return 70
        default:
            return 0
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
            case 0: return "Price"
            case 1: return "Property Details"
            case 2: return "Property Area"
            case 3: return "Transaction Type"
            case 4: return "Availability"
            case 5: return "Other Details"
            case 6: return "Select Subscription"
        default:
            return ""
        }
    }
}
