//
//  CommSearchProjectVC.swift
//  CommercialSearchh
//
//  Created by Deeva Infotech LLP on 19/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommSearchProjectVC: UIViewController {
    @IBOutlet weak var MyTableView1: UITableView!
    
    var ProjectImageArray = [UIImage(named:"Ready to move.jpg"),UIImage(named:"construction"),UIImage(named:"New Launch.jpg")]
    var ProjectLabelArray = ["Ready To Move","Under Construction","New Launch"]
    
    var slider1: NHRangeSliderView = NHRangeSliderView()
    var slider2: NHRangeSliderView = NHRangeSliderView()
    
    var _selectedPropertyTypeCells : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
 }

extension CommSearchProjectVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let projectCell1 = tableView.dequeueReusableCell(withIdentifier: "ProjectCell1", for: indexPath) as! CommSearchProjectTableViewCell
            return projectCell1
        case 1:
            let projectCell2 = tableView.dequeueReusableCell(withIdentifier: "ProjectCell2", for: indexPath) as! CommSearchProjectTableViewCell
            slider1 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            projectCell2.addSubview(slider1)
            return projectCell2
        case 2:
            let projectCell3 = tableView.dequeueReusableCell(withIdentifier: "ProjectCell3", for: indexPath) as! CommSearchProjectTableViewCell
            return projectCell3
        case 3:
            let projectCell4 = tableView.dequeueReusableCell(withIdentifier: "ProjectCell4", for: indexPath) as! CommSearchProjectTableViewCell
            slider2 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            projectCell4.addSubview(slider2)
            return projectCell4
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 80
        }
        else {
            return 150
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch  section {
        case 0: return "Location"
        case 1: return "Price Range"
        case 2: return "Project Status"
        case 3: return "Area"
        default:break
        }
        return ""
    }
}

extension CommSearchProjectVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ProjectImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionProjectCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionProjectCell", for: indexPath) as! CommSearchProjectCollectionViewCell
        collectionProjectCell.ProjectImage.image = ProjectImageArray[indexPath.row]
        collectionProjectCell.ProjectLabel.text = ProjectLabelArray[indexPath.row]
        return collectionProjectCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 2
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        _selectedPropertyTypeCells.add(indexPath.row)
        collectionView.allowsMultipleSelection = true
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.white.cgColor
        _selectedPropertyTypeCells.remove(indexPath.row)
    }
}
