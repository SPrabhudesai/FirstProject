//
//  PGNext_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 07/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class PGNext_VC: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var tableView: UITableView!
    
        var PGNextCell = PGNext_TableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    @IBAction func btn_PostLand(_sender:Any){
        if let PGExpectedRentTextfield  = self.view.viewWithTag(1) as? UITextField{
            if (PGExpectedRentTextfield.text?.isEmpty)! || PGExpectedRentTextfield.text == nil{
                print("Empty")
            }
        }
        
    }
    @IBAction func btn_Back(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let destination = storybord.instantiateViewController(withIdentifier: "Post_PG_ViewController") as! Post_PG_ViewController
        self.present(destination, animated: true, completion: nil)
        
    }
    
}
extension PGNext_VC: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let PGNCell1 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell1", for: indexPath) as! PGNext_TableViewCell
             PGNCell1.PGExpectedRentTextfield.tag = indexPath.row
            return PGNCell1
        case 1:
            let PGNCell2 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell2", for: indexPath) as! PGNext_TableViewCell
            return PGNCell2
        case 2:
            let PGNCell3 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell3", for: indexPath) as! PGNext_TableViewCell
            return PGNCell3
        case 3:
            let PGNCell4 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell4", for: indexPath) as! PGNext_TableViewCell
            return PGNCell4
        case 4:
            let PGNCell5 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell5", for: indexPath) as! PGNext_TableViewCell
            return PGNCell5
        case 5:
            let PGNCell6 = tableView.dequeueReusableCell(withIdentifier: "PGNext_TableViewCell6", for: indexPath) as! PGNext_TableViewCell
            return PGNCell6
            
        default:
            return UITableViewCell()
        }
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section) {
            case 0: return 210
            case 1: return 460
            case 2: return 110
            case 3: return 110
            case 4: return 110
            case 5: return 74
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
            case 0: return "Price"
            case 1: return "Property Details"
            case 2: return "Property Floors"
            case 3: return "Availability"
            case 4: return "About Property"
            case 5: return "Subscription"
        default:
            break
        }
        return ""
    }
}
