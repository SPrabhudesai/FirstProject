//
//  ResiSearchRentVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 15/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchRentVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    var PropertyLabelArray = ["Apartment","House/Villa","Builder Floor","Farm House","Service Apartment","Studio Apartment"]
    var PropertyImageArray = [UIImage(named:"Apartment.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Studio Apartment.jpg"), UIImage(named:"Farm House.jpg"), UIImage(named:"Serviced Apartment.jpg")]
    var bedroomImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    
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
extension ResiSearchRentVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "rentCell1", for: indexPath) as! ResiSearchRentTableViewCell
            return cell
        case 1:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "rentCell2", for: indexPath) as! ResiSearchRentTableViewCell
            return cell1
        case 2:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "rentCell3", for: indexPath) as!
            ResiSearchRentTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 0)
            cell2.addSubview(slider)
            return cell2
        case 3:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "rentCell4", for: indexPath) as! ResiSearchRentTableViewCell
            return cell3
        default:
            break
        }
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
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
}
extension ResiSearchRentVC : UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0: return PropertyImageArray.count
        case 1: return bedroomImageArray.count
        default: break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch  collectionView.tag {
        case 0:
            let colCell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "rentCell1", for: indexPath) as! ResiSearchRentCollectionViewCell
            colCell1.PropertyImage.image = PropertyImageArray[indexPath.row]
            colCell1.PropertyLabel.text = PropertyLabelArray[indexPath.row]
            return colCell1
        case 1:
            let colCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "rentCell2", for: indexPath) as! ResiSearchRentCollectionViewCell
            colCell2.bedroomImage.image = bedroomImageArray[indexPath.row]
            return colCell2
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