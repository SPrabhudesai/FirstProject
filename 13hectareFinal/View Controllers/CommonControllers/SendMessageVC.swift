//
//  SendMessageVC.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech on 04/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class SendMessageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
extension SendMessageVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var SMCell = UITableViewCell()
        if indexPath.section == 0{
            SMCell = tableView.dequeueReusableCell(withIdentifier: "SMCell1", for: indexPath) as! SendMessageTableViewCell
            SMCell.layer.borderWidth = 1
        }
        if indexPath.section == 1{
            SMCell = tableView.dequeueReusableCell(withIdentifier: "SMCell2", for: indexPath) as! SendMessageTableViewCell
        }
        return SMCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 120
        }
        if indexPath.section == 1{
            return 500
        }
        return 0
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
}
