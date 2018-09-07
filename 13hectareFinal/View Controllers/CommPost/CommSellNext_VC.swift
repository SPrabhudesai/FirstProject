//
//  CommSellNext_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 07/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommSellNext_VC: UIViewController {

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
        let destination = storybord.instantiateViewController(withIdentifier: "PostCommerViewController") as! PostCommerViewController
        self.present(destination, animated: true, completion: nil)
    }
}
extension CommSellNext_VC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section) {
        case 0:
            let CommNSCell1 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell1", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell1
        case 1:
            let CommNSCell2 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell2", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell2
        case 2:
            let CommNSCell3 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell3", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell3
        case 3:
            let CommNSCell4 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell4", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell4
        case 4:
            let CommNSCell5 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell5", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell5
        case 5:
            let CommNSCell6 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell6", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell6
        case 6:
            let CommNSCell7 = tableView.dequeueReusableCell(withIdentifier: "CommNextSell_TableViewCell7", for: indexPath) as! CommNextSell_TableViewCell
            return CommNSCell7
        default:
            break
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section) {
        case 0: return 110
        case 1: return 110
        case 2: return 110
        case 3: return 110
        case 4: return 106
        case 5: return 110
        case 6: return 62
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Property Price"
        case 1: return "Property Details"
        case 2: return "Property Area"
        case 3: return "Transaction Type"
        case 4: return "Availbility"
        case 5: return "Other Details"
        case 6: return "Subscription"
        default: return ""
        }
    }
    
}
