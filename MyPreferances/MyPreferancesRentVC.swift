//
//  MyPreferancesRentVC.swift
//  MyPreferances
//
//  Created by Deeva Infotech LLP on 18/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class MyPreferancesRentVC: UIViewController {
    @IBOutlet weak var MyRentTableView: UITableView!
    var TypeImageArray = [UIImage(named:"Apartment.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Residential Land.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"Q"), UIImage(named:"Serviced Apartment.jpg"), UIImage(named:"Studio Apartment.jpg")]

    var TypeLabelArray = ["Apartment", "House/Villa", "Land", "Builder Floor", "Farm House", "Serviced Apartment", "Studio Apartment"]
    var BedroomImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    var RequireImageArray = [UIImage(named:"Single men.jpg"), UIImage(named:"Single women.jpg"), UIImage(named:"Family.jpg")]
    var RequireLableArray = ["Single Men", "Single Women", "Family"]
    
    var slider: NHRangeSliderView = NHRangeSliderView()
    
    var _selectedPropertyTypeCells : NSMutableArray = []
    var _selectedPropertyTypeCells1 : NSMutableArray = []
    var _selectedPropertyTypeCells2 : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   }
extension MyPreferancesRentVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
                let myRentCell1 = tableView.dequeueReusableCell(withIdentifier: "MyRentCell1", for: indexPath) as! MyPreferancesRentTableViewCell
                return myRentCell1
        case 1:
                let myRentCell2 = tableView.dequeueReusableCell(withIdentifier: "MyRentCell2", for: indexPath) as! MyPreferancesRentTableViewCell
                slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 300, upperVal: 340, gapVal: 0)
                myRentCell2.addSubview(slider)
                return myRentCell2
        case 2:
                let myRentCell3 = tableView.dequeueReusableCell(withIdentifier: "MyRentCell3", for: indexPath) as! MyPreferancesRentTableViewCell
                return myRentCell3
        case 3:
                let myRentCell4 = tableView.dequeueReusableCell(withIdentifier: "MyRentCell4", for: indexPath) as! MyPreferancesRentTableViewCell
                return myRentCell4
        case 4:
                let myRentCell5 = tableView.dequeueReusableCell(withIdentifier: "MyRentCell5", for: indexPath) as! MyPreferancesRentTableViewCell
                return myRentCell5
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
        return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Location"
        case 1: return "Budget"
        case 2: return "Property Type"
        case 3: return "Number of Bedrooms"
        case 4: return "Property Require For"
        default:break
        }
        return ""
    }
}

extension MyPreferancesRentVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0:
             return TypeImageArray.count
        case 1:
             return BedroomImageArray.count
        case 2:
             return RequireImageArray.count
        default:
            break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
                let collectionCell11 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyTypeCell1", for: indexPath) as! MyPreferancesRentCollectionViewCell
                collectionCell11.TypeImage.image = TypeImageArray[indexPath.row]
                collectionCell11.TypeLabel.text = TypeLabelArray[indexPath.row]
                return collectionCell11
        case 1:
                let collectionCell22 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyBedCell1", for: indexPath) as! MyPreferancesRentCollectionViewCell
                collectionCell22.BedroomImage.image = BedroomImageArray[indexPath.row]
                return collectionCell22
        case 2:
                let collectionCell33 = collectionView.dequeueReusableCell(withReuseIdentifier: "MyRequireCell", for: indexPath) as! MyPreferancesRentCollectionViewCell
                collectionCell33.RequireImage.image = RequireImageArray[indexPath.row]
                collectionCell33.RequireLable.text = RequireLableArray[indexPath.row]
                return collectionCell33
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
        case 0:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells.remove(indexPath.row)
        case 1:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells1.remove(indexPath.row)
        case 2:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells2.remove(indexPath.row)
        default:
            break
        }
    }
}
