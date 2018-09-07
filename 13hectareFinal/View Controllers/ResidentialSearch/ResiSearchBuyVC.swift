//
//  ResiSearchBuyVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 15/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchBuyVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    
    var PropertyLabelArray = ["Apartment","House/Villa","Builder Floor","Farm House","Service Apartment","Studio Apartment"]
    var PropertyImageArray = [UIImage(named:"Apartment.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Studio Apartment.jpg"), UIImage(named:"Farm House.jpg"), UIImage(named:"Serviced Apartment.jpg")]
    var bedroomImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    
    var slider: NHRangeSliderView = NHRangeSliderView()
    
    var _selectedPropertyTypeCells : NSMutableArray = []
    var _selectedPropertyTypeCells1 : NSMutableArray = []
    
    @IBOutlet weak var PropertyCollection: UICollectionView!
    @IBOutlet weak var BedroomCollection: UICollectionView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
}
extension ResiSearchBuyVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "buyCell1", for: indexPath) as! ResiSearchBuyTableViewCell
            return cell
        case 1:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "buyCell2", for: indexPath) as! ResiSearchBuyTableViewCell
            return cell1
        case 2:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "buyCell3", for: indexPath) as! ResiSearchBuyTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 300, upperVal: 340, gapVal: 0)
            cell2.addSubview(slider)
            return cell2
        case 3:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "buyCell4", for: indexPath) as! ResiSearchBuyTableViewCell
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
        case 1: return "Property Type"
        case 2: return "Price Range"
        case 3: return "Bedroom"
        default:break
        }
        return ""
    }
}
extension ResiSearchBuyVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0: return PropertyLabelArray.count
        case 1: return bedroomImageArray.count
        default: break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "propCell", for: indexPath) as! ResiSearchBuyCollectionViewCell
            cell.PropertyImage.image = PropertyImageArray[indexPath.row]
            cell.PropertyLabel.text = PropertyLabelArray[indexPath.row]
            return cell
        case 1:
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "propCell1", for: indexPath) as! ResiSearchBuyCollectionViewCell
            cell1.bedroomImage.image = bedroomImageArray[indexPath.row]
            return cell1
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
