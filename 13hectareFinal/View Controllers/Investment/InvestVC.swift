//
//  InvestVC.swift
//  InvestmentModule
//
//  Created by Deeva Infotech on 30/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class InvestVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    var InvestPTypeImageArray = [UIImage(named:"Apartment.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Residential Land.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"Farm House.jpg"), UIImage(named:"Serviced Apartment.jpg"), UIImage(named:"Studio Apartment.jpg"), UIImage(named:"Office space.jpg"), UIImage(named:"Shop.jpg"), UIImage(named:"Showroom.jpg"), UIImage(named:"Ware House.jpg")]
    var InvestPTypeLabelArray = ["Apartment", "House/Villa", "Land", "Builder Floor", "Farm House", "Serviced Apartment", "Studio apartment", "Office/Space", "Shop", "Showroom", "Ware House"]
    var InvestBedImageArray = [UIImage(named:"icon1"), UIImage(named:"icon2"), UIImage(named:"icon3"), UIImage(named:"icon4"), UIImage(named:"icon5")]
    var ConstructionImageArray = [UIImage(named:"Ready to move.jpg"), UIImage(named:"construction")]
    var ConsructionLabelArray = ["Ready To Move", "Under Construction"]
    
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
    
    @IBAction func BtnBack(_ sender: Any) {
      //  self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    

    @IBAction func btnSearch(_ sender: Any) {
        print( "BuyPriceRangeMin :", slider.lowerLabel?.text as Any)
        print( "BuyPriceRangeMax :", slider.upperLabel?.text as Any)
        print( "Selected Property Cell : ", _selectedPropertyTypeCells as Any)
        print( "Selected Bedroom Cell : ", _selectedPropertyTypeCells1 as Any)
        print( "Selected Status Cell : ", _selectedPropertyTypeCells2 as Any)
    }
    
}
extension InvestVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "investCell1", for: indexPath) as!InvestTableViewCell
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "investCell2", for: indexPath) as!InvestTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            cell.addSubview(slider)
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "investCell3", for: indexPath) as!InvestTableViewCell
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: "investCell4", for: indexPath) as!InvestTableViewCell
        case 4:
            cell = tableView.dequeueReusableCell(withIdentifier: "investCell5", for: indexPath) as!InvestTableViewCell
            
        default:
            break
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 100
        }
        else{
            return 150
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 0: return "Locaton"
        case 1: return "Price Range"
        case 2: return "Property Type"
        case 3: return "Number Of Bedrooms"
        case 4: return "Construction Status"
        default:break
        }
        return ""
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
}
extension InvestVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 1: return InvestPTypeImageArray.count
        case 2: return InvestBedImageArray.count
        case 3: return ConstructionImageArray.count
        default:
            break
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 1:
            let collCell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "investCell1", for: indexPath) as! InvestCollectionViewCell
            collCell1.InvestPTypeImage.image = InvestPTypeImageArray[indexPath.row]
            collCell1.InvestPTypeLabel.text = InvestPTypeLabelArray[indexPath.row]
            return collCell1
        case 2:
            let collCell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "investCell2", for: indexPath) as! InvestCollectionViewCell
            collCell2.InvestBedImage.image = InvestBedImageArray[indexPath.row]
            return collCell2
        case 3:
            let collCell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "investCell3", for: indexPath) as! InvestCollectionViewCell
            collCell3.ConstructionImage.image = ConstructionImageArray[indexPath.row]
            collCell3.ConsructionLabel.text = ConsructionLabelArray[indexPath.row]
            return collCell3
            
        default:
            break
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        switch collectionView.tag {
        case 1:
            cell?.layer.borderWidth = 2
            cell?.layer.borderColor = UIColor.lightGray.cgColor
            self._selectedPropertyTypeCells.add(indexPath.row)
            collectionView.allowsMultipleSelection = true
        case 2:
            cell?.layer.borderWidth = 2
            cell?.layer.borderColor = UIColor.lightGray.cgColor
            self._selectedPropertyTypeCells1.add(indexPath.row)
            collectionView.allowsMultipleSelection = true
        case 3:
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
        case 1:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells.remove(indexPath.row)
        case 2:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells1.remove(indexPath.row)
        case 3:
            cell?.layer.borderColor = UIColor.white.cgColor
            self._selectedPropertyTypeCells2.remove(indexPath.row)
            
        default:
            break
        }
    }
}

