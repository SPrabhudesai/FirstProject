//
//  FilterViewController.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech LLP on 02/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    @IBOutlet weak var TableView1: UITableView!
    @IBOutlet weak var TableView2: UITableView!
    
    var selected: Bool = false
    var Label1Array = ["Price", "Locality","Area(sq.ft.)","Society","Property Type","Posted By","Listing Quality"]
    var PriceArray = ["",""]
    var LocalityArray = ["gfh","hjkhk", "iyui", "fgsfgaf"]
    var AreaArray = ["4546", "7898", "897", "5646"]
    var SocietyArray = ["savana", "sobha", "raj"]
    var PropertyTypeArray = ["Apartment", "House/Villa", "Land", "Builder Floor", "Serviced Apartment", "Farm House", "Studio Apartment"]
    var PostedByArray = ["Ownwer", "Dealer", "Builder"]
    var ListingQualityArray = ["Photos", "Video", "Varified"]
    
    var dataForTable1 = [String]()
    var dataForTable2 = [String]()
    var values = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataForTable1 = Label1Array
        dataForTable2 = PriceArray
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // To reset the table view cell
    @IBAction func ResetButton(_ sender: Any) {
        for section in 0..<self.TableView2.numberOfSections{
            for row in 0..<self.TableView2.numberOfRows(inSection: section){
                let cell = self.TableView2.cellForRow(at: IndexPath(row: row, section: section))
                cell?.accessoryType = .none
            }
        }
    }
    
    func getAllTextFromTableView() {
        guard let indexPaths = self.TableView2.indexPathsForSelectedRows else { // if no selected cells just return
            return
        }
        
        for indexPath in indexPaths {
            values.append(dataForTable2[indexPath.row])
            print(values)
        }
    }
    
}
extension FilterViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var count = 0
        if tableView == self.TableView1{
            count = dataForTable1.count
        }
        else {
            count = dataForTable2.count
        }
        return count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.TableView1{
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! filterTableViewCell
            cell1.Label1.text = Label1Array[indexPath.row]
            cell1.layer.borderWidth = 0.5
            cell1.layer.borderColor = UIColor.lightGray.cgColor
            return cell1
        }
        if tableView == self.TableView2{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! filterTableViewCell
            cell2.layer.borderColor = UIColor.lightGray.cgColor
            cell2.layer.borderWidth = 0.5
            cell2.Label2.text = dataForTable2[indexPath.row]
            return cell2
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == self.TableView1{
            return 80
        }
        else{
            return 50
        }
    }
    
    // change in second table view according to first table view
    // Select and deselect cell options.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == self.TableView1{
        switch indexPath.row {
        case 0: dataForTable2 = PriceArray
        case 1: dataForTable2 = LocalityArray
        case 2: dataForTable2 = AreaArray
        case 3: dataForTable2 = SocietyArray
        case 4: dataForTable2 = PropertyTypeArray
        case 5: dataForTable2 = PostedByArray
        case 6: dataForTable2 = ListingQualityArray
        default:break
        }
            TableView2.reloadData()
        }
        if tableView == self.TableView2{
            
//                if tableView.cellForRow(at: indexPath)?.accessoryType == UITableViewCellAccessoryType.checkmark
//                {
//                    tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.none
//                }
//                else{
//                    tableView.cellForRow(at: indexPath)?.accessoryType = UITableViewCellAccessoryType.checkmark
//                }
            selected = false
            if let cell = tableView.cellForRow(at: indexPath as IndexPath) {
                if cell.accessoryType == .checkmark{
                    cell.accessoryType = .none
                    print("\(dataForTable2[indexPath.row])")
                    values = values.filter{$0 != "\(dataForTable2[indexPath.row])"}
                    selected = true
                    print(values)
                }
                else{
                    cell.accessoryType = .checkmark
                }
            }
            if selected == true{
                print(values)
            }
            else{
                getAllTextFromTableView()
            }
        }
    }
}
