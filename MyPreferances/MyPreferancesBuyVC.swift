//
//  MyPreferancesBuyVC.swift
//  MyPreferances
//
//  Created by Deeva Infotech LLP on 18/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class MyPreferancesBuyVC: UIViewController {
    @IBOutlet weak var MyBuyTableView: UITableView!
    var MyPTypeImageArray = [UIImage(named:"Apartment.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Residential Land.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"Q"), UIImage(named:"Serviced Apartment.jpg"), UIImage(named:"Studio Apartment.jpg")]
    var MyPTypeLabelArray = ["Apartment", "House/Villa", "Land", "Builder Floor", "Farm House", "Serviced Apartment", "Studio Apartment"]
    var MyBedImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    var MyStatusImageArray = [UIImage(named:"ready1"), UIImage(named:"construction1")]
    var MyStatusLabelArray = ["Ready To Move", "Under Construction"]
    var slider: NHRangeSliderView = NHRangeSliderView()
    var _selectedPropertyTypeCells : NSMutableArray = []
    var _selectedPropertyTypeCells1 : NSMutableArray = []
    var _selectedPropertyTypeCells2 : NSMutableArray = []
    
    var alert: UIAlertController = UIAlertController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 }
extension MyPreferancesBuyVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let myCell1 = tableView.dequeueReusableCell(withIdentifier: "MyCell1", for: indexPath) as! MyPreferancesBuyTableViewCell
            return myCell1
        case 1:
            let myCell2 = tableView.dequeueReusableCell(withIdentifier: "MyCell2", for: indexPath) as! MyPreferancesBuyTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 300, upperVal: 340, gapVal: 0)
            myCell2.addSubview(slider)
            return myCell2
        case 2:
            let myCell3 = tableView.dequeueReusableCell(withIdentifier: "MyCell3", for: indexPath) as! MyPreferancesBuyTableViewCell
            return myCell3
        case 3:
            let myCell4 = tableView.dequeueReusableCell(withIdentifier: "MyCell4", for: indexPath) as! MyPreferancesBuyTableViewCell
            return myCell4
        case 4:
            let myCell5 = tableView.dequeueReusableCell(withIdentifier: "MyCell5", for: indexPath) as! MyPreferancesBuyTableViewCell
            return myCell5
        default: break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 80
        }
        else{
            return 150
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Location"
        case 1: return "Budget"
        case 2: return "Property Type"
        case 3: return "Number of Bedrooms"
        case 4: return "Construction Status"
        default:break
        }
        return ""
    }
}
extension MyPreferancesBuyVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0: return MyPTypeImageArray.count
        case 1: return MyBedImageArray.count
        case 2: return MyStatusImageArray.count
        default:break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:  let collectionCell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyTypeCell", for: indexPath) as!    MyPreferancesBuyCollectionViewCell
                collectionCell1.MyPTypeImage.image = MyPTypeImageArray[indexPath.row]
                collectionCell1.MyPTypeLabel.text = MyPTypeLabelArray[indexPath.row]
        return collectionCell1
        case 1: let collectionCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBedCell", for: indexPath) as! MyPreferancesBuyCollectionViewCell
                collectionCell2.MyBedImage.image = MyBedImageArray[indexPath.row]
        return collectionCell2
        case 2:  let collectionCell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyStatusCell", for: indexPath) as! MyPreferancesBuyCollectionViewCell
                collectionCell3.MyStatusImage.image = MyStatusImageArray[indexPath.row]
                collectionCell3.MyStatusLabel.text = MyStatusLabelArray[indexPath.row]
        return collectionCell3
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
        case 2:
            cell?.layer.borderWidth = 2
            cell?.layer.borderColor = UIColor.lightGray.cgColor
            self._selectedPropertyTypeCells2.add(indexPath.row)
            collectionView.allowsMultipleSelection = true
            
        default:
            break
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        switch collectionView.tag {
        case 0: cell?.layer.borderColor = UIColor.white.cgColor
                self._selectedPropertyTypeCells.remove(indexPath.row)
        case 1: cell?.layer.borderColor = UIColor.white.cgColor
                self._selectedPropertyTypeCells1.remove(indexPath.row)
        case 2: cell?.layer.borderColor = UIColor.white.cgColor
                self._selectedPropertyTypeCells2.remove(indexPath.row)
        default:break
        }
    } 
}
