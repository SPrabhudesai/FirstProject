//
//  ResiSearchProjectVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 15/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchProjectVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    
    var StatusImageArray = [UIImage(named:"Ready to move.jpg"),UIImage(named:"construction"),UIImage(named:"New Launch.jpg")]
    var statusLabelArray = ["Ready To move","Under Construction","New Launch"]
    var BedImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    
    var slider: NHRangeSliderView = NHRangeSliderView()
    
    var _selectedPropertyTypeCells : NSMutableArray = []
    var _selectedPropertyTypeCells1 : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 }
extension ResiSearchProjectVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "projectCell1", for: indexPath) as! ResiSearchProjectTableViewCell
            return cell
        case 1:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "projectCell2", for: indexPath) as! ResiSearchProjectTableViewCell
            return cell1
        case 2:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "projectCell3", for: indexPath) as! ResiSearchProjectTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 0)
            cell2.addSubview(slider)
            return cell2
        case 3:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "projectCell4", for: indexPath) as! ResiSearchProjectTableViewCell
            return cell3
        default:
            break
        }
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch(indexPath.section){
        case 0: return 85
        case 1: return 135
        case 2: return 130
        case 3: return 166
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0: return "Location"
        case 1: return "Project Status"
        case 2: return "Price Range"
        case 3: return "Bedroom"
        default:break
        }
        return ""
    }
}

extension ResiSearchProjectVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0: return StatusImageArray.count
        case 1: return BedImageArray.count
        default: break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
            let ProjectCell = collectionView.dequeueReusableCell(withReuseIdentifier: "statusCell", for: indexPath) as! ResiSearchProjectCollectionViewCell
            ProjectCell.StatusImage.image = StatusImageArray[indexPath.row]
            ProjectCell.statusLabel.text = statusLabelArray[indexPath.row]
            return ProjectCell
        case 1:
            let ProjectCell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "bedCell", for: indexPath) as! ResiSearchProjectCollectionViewCell
            ProjectCell1.BedImage.image = BedImageArray[indexPath.row]
            return ProjectCell1
        default:
            break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        switch collectionView.tag {
        case 0:
            cell?.layer.borderWidth = 2
            cell?.layer.borderColor = UIColor.lightGray.cgColor
            self._selectedPropertyTypeCells.add(indexPath.row)
            collectionView.allowsMultipleSelection = true
        case 1:
            cell?.layer.borderWidth = 2
            cell?.layer.borderColor = UIColor.lightGray.cgColor
            self._selectedPropertyTypeCells1.add(indexPath.row)
            collectionView.allowsMultipleSelection = true
        default:
            break
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        switch collectionView.tag {
        case 0:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells.remove(indexPath.row)
        case 1:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells1.remove(indexPath.row)
        default:
            break
        }
    }
}
