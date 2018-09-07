//
//  RearTableViewController.swift
//  Final
//
//  Created by Deeva Infotech on 18/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class RearTableViewController: UITableViewController {
    
    private var dateCellExpanded: Bool = false
    struct objects {
        var sectionName : String!
        var sectionObjects : [String]!
    }
    
    var objectArray = [objects]()
    var showOthers = false
    //var sectionName = ["","Search Property","Post Property","others"]
   // var items = [["Home","Profile","My Property Alerts","My Preferences","View Responces"],["Residential Search","Commercial Search","Land Search","PG Search","Investment"],["Post Residential","Post Commercial","Post Land","Post PG","Manage/Edit Listing","Buy Our Services","About Us","Feedback"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectArray = [objects(sectionName : "",
                               sectionObjects :["Home","Profile","My Shortlists","My Property Alerts","My Preferences","View Responces","Search Property"]),
                       objects(sectionName : "",
                               sectionObjects :["Residential Search","Commercial Search","Land Search","PG Search","Investment","Post Property"]),
                       objects(sectionName : "",
                               sectionObjects :["Post Residential","Post Commercial","Post Land","Post PG","Manage/Edit Listing","Buy Our Services","About Us","Feedback","Others"]),
                       objects(sectionName: "",
                               sectionObjects : ["Agent List", "Market Price", "Loan Eligibility", "EMI Calculator", "Advocate on Call", "Demarcation", "Licening"])]
       
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnLogin(_ sender: Any) {
        let st = UIStoryboard(name: "Login", bundle: nil)
        let des = st.instantiateViewController(withIdentifier: "Login_ProfileViewController") as! Login_ProfileViewController
        self.present(des, animated: true, completion: nil)
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return objectArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
    
        if(section == 3){
            if(showOthers == true){
                return objectArray[section].sectionObjects.count
            }
            else{
                return 0;
            }
        }
        else
        {
            return objectArray[section].sectionObjects.count
        }
    
    
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 

        
        
        let subview: Array = cell.contentView.subviews
        for view in subview{
            view.removeFromSuperview()
        }
        
        let mainIconView = UIImageView(frame: CGRect(x: 10, y: 7, width: 25, height: 25))
        mainIconView.image = UIImage(named: "home") // .backgroundColor = UIColor.red
        cell.contentView.addSubview(mainIconView)
        
        let mainLabel = UITextView(frame: CGRect(x: 60, y: 5, width: 175, height: 40))
        mainLabel.text  = objectArray[indexPath.section].sectionObjects[indexPath.row]
        mainLabel.font = UIFont(name: "helvetica neue", size: 18)
       // mainLabel.allowsEditingTextAttributes = false
        mainLabel.isEditable = false
        mainLabel.backgroundColor = UIColor.blue.withAlphaComponent(0.0)
        cell.contentView.addSubview(mainLabel)
        
        //cell.textLabel?.text = objectArray[indexPath.section].sectionObjects[indexPath.row]
        
        cell.layer.borderWidth = 0
        cell.backgroundColor = UIColor.white
        
        
        
        if (indexPath.section == 0){
            if (indexPath.row == 6 ){
                cell.layer.borderWidth = 0
                cell.backgroundColor = UIColor.green
                
                let dropView = UIView(frame: CGRect(x: 230, y: 5, width: 30, height: 30))
                dropView.backgroundColor = UIColor.green
                cell.contentView.addSubview(dropView)
            }
        }
        if indexPath.section == 1{
            if indexPath.row == 5{
                cell.layer.borderWidth = 0
                cell.backgroundColor = UIColor.green
                
                let dropView = UIView(frame: CGRect(x: 230, y: 5, width: 30, height: 30))
                dropView.backgroundColor = UIColor.green
                cell.contentView.addSubview(dropView)
            }
        }
        if indexPath.section == 2{
            if indexPath.row == 8{
                cell.layer.borderWidth = 0
                cell.backgroundColor = UIColor.green
                
                let dropView = UITextView(frame: CGRect(x: 230, y: 2, width: 30, height: 30))
                dropView.backgroundColor = UIColor.green
                dropView.font = UIFont(name: "Helvetica Neue", size: 20)
                dropView.text = "+"
                cell.contentView.addSubview(dropView)
            }
        }

        return cell
    }
   
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return objectArray[section].sectionName
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
                if indexPath.row == 0{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let controller = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
                    self.present(controller, animated: true, completion: nil)
                }
                if indexPath.row == 4{
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let controller = storyboard.instantiateViewController(withIdentifier: "MyPreferancesVC") as! MyPreferancesVC
                    self.present(controller, animated: true, completion: nil)
                }
            }
        if indexPath.section == 1{
            if indexPath.row == 0{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "ResidentialSearchVC") as! ResidentialSearchVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 1{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "CommSearchVC") as! CommSearchVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 2{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "LandSearchVC") as! LandSearchVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 3{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "PGSearchVC") as! PGSearchVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 4{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "InvestVC") as! InvestVC
                self.present(controller, animated: true, completion: nil)
            }
        }

        
        if indexPath.section == 2{
            if indexPath.row == 0{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "PostResiViewController") as! PostResiViewController
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 1{
                let storybord = UIStoryboard(name: "Main", bundle: nil)
                let controller = storybord.instantiateViewController(withIdentifier: "PostCommerViewController") as! PostCommerViewController
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 2{
                let storybord = UIStoryboard(name: "Main", bundle: nil)
                let controller = storybord.instantiateViewController(withIdentifier: "PostLandViewController") as! PostLandViewController
                self.present(controller, animated: true, completion: nil)
                
            }
            if indexPath.row == 3{
                let storybord = UIStoryboard(name: "Main", bundle: nil)
                let controller = storybord.instantiateViewController(withIdentifier: "Post_PG_ViewController") as! Post_PG_ViewController
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 4{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "ManageEditListingVC") as! ManageEditListingVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 5{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "BuyOurServicesVC") as! BuyOurServicesVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 6{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "AboutUsVC") as! AboutUsVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 7{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "FeedBackViewController") as! FeedBackViewController
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 8{
                
                showOthers = !showOthers
                tableView.reloadData()
                
                if(showOthers){
                    tableView.scrollToRow(at: IndexPath(item:3, section: 3), at: .bottom, animated: true)
                }
                else{
                    tableView.scrollToRow(at: IndexPath(item:8, section: 2), at: .bottom, animated: true)
                }
            }
        }
        
        if(indexPath.section == 3){
            tableView.sectionFooterHeight = 0;
            print("ROW >>> ");
            if indexPath.row == 0{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "AgentListVC") as! AgentListVC
                self.present(controller, animated: true, completion: nil)
            }
            if indexPath.row == 2{
                if let url = URL(string: "https://www.paisabazaar.com/loan-eligibility-calculator/") {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }
            }
            if indexPath.row == 3{
                if let url = URL(string: "https://emicalculator.net") {
                    if UIApplication.shared.canOpenURL(url) {
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }
            }
            if indexPath.row == 4{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let controller = storyboard.instantiateViewController(withIdentifier: "AdvocateVC") as! AdvocateVC
                self.present(controller, animated: true, completion: nil)
            }
        }
    }
}
