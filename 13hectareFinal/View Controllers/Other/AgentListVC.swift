//
//  AgentListVC.swift
//  AgentListModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class AgentListVC: UIViewController {
    var AgentImageArray = [UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile"), UIImage(named:"profile")]
    var AgentNameLabelArray = ["Shailesh", "Amol", "Harshali", "Umesh", "Yogesh"]
    var AgentContactLabelArray = ["8877665676", "9877654433", "545857888", "7879742123", "9875643215"]
    var AgentEmailLabelArray = ["abc@gmail.com", "kal@yahoo.com", "har@gmail.com", "ume@ideeva.in", "yog@yahoo.com"]
    var AgentAreaLabelArray = ["Kothrud", "Baner", "Bavdhan", "Kothrud", "Baner", "Bavdhan"]
    
    let cellSpacingHeight : CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func BtnBack(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func btnPostedProperty(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let destination = storyboard.instantiateViewController(withIdentifier: "AgentPostedProprtyVC") as! AgentPostedProprtyVC
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension AgentListVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AgentNameLabelArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "agentCell", for: indexPath) as! AgentListTableViewCell
        cell.AgentImage.image = AgentImageArray[indexPath.row]
        cell.AgentNameLabel.text = AgentNameLabelArray[indexPath.row]
        cell.AgentContactLabel.text = AgentContactLabelArray[indexPath.row]
        cell.AgentEmailLabel.text = AgentEmailLabelArray[indexPath.row]
        cell.AgentAreaLabel.text = AgentAreaLabelArray[indexPath.row]
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 3
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let destination = storyboard.instantiateViewController(withIdentifier: "DetailVC") as! DetailVC
        destination.getImage = AgentImageArray[indexPath.row]!
        destination.getName = AgentNameLabelArray[indexPath.row]
        destination.getContact = AgentContactLabelArray[indexPath.row]
        destination.getEmail = AgentEmailLabelArray[indexPath.row]
        destination.getArea = AgentAreaLabelArray[indexPath.row]
       // self.navigationController?.pushViewController(destination, animated: true)
        self.present(destination, animated: true, completion: nil)
    }
}
