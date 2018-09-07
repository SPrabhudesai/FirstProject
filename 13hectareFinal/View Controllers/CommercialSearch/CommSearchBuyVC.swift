//
//  CommSearchBuyVC.swift
//  CommercialSearchh
//
//  Created by Deeva Infotech LLP on 19/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommSearchBuyVC: UIViewController {
    
    @IBOutlet weak var MyTableView: UITableView!
    var TypeImageArray = [UIImage(named:"Office space.jpg"),UIImage(named:"Shop.jpg"),UIImage(named:"Showroom.jpg"),UIImage(named:"Ware House.jpg")]
    var TypeLabelArray = ["Office/Space", "Shop", "Showroom", "Ware House"]
    var slider1: NHRangeSliderView = NHRangeSliderView()
    var slider2: NHRangeSliderView = NHRangeSliderView()

    var _selectedPropertyTypeCells : NSMutableArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnclick(_ sender: Any) {
        print( "Min :", slider1.lowerLabel?.text as Any)
        print( "Max :", slider1.upperLabel?.text as Any)
        print( "Low :", slider2.lowerLabel?.text as Any)
        print( "Up  :", slider2.upperLabel?.text as Any)
        
         print(_selectedPropertyTypeCells)
    }
}

extension CommSearchBuyVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let buyCell1 = tableView.dequeueReusableCell(withIdentifier: "BuyCell1", for: indexPath) as! CommSearchBuyTableViewCell
            return buyCell1
        case 1:
            let buyCell2 = tableView.dequeueReusableCell(withIdentifier: "BuyCell2", for: indexPath) as! CommSearchBuyTableViewCell
            slider1 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            buyCell2.addSubview(slider1)
            return buyCell2
        case 2:
            let buyCell3 = tableView.dequeueReusableCell(withIdentifier: "BuyCell3", for: indexPath) as! CommSearchBuyTableViewCell
            return buyCell3
        case 3:
            let buyCell4 = tableView.dequeueReusableCell(withIdentifier: "BuyCell4", for: indexPath) as! CommSearchBuyTableViewCell
            slider2 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 100, lowerVal: 10, upperVal: 30, gapVal: 5)
            buyCell4.addSubview(slider2)
            return buyCell4
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
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
        switch  section {
        case 0: return "Location"
        case 1: return "Price Range"
        case 2: return "Property Type"
        case 3: return "Area"
        default:break
        }
        return ""
    }
}

extension CommSearchBuyVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TypeImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionBuyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionBuyCell", for: indexPath) as! CommSearchBuyCollectionViewCell
        collectionBuyCell.TypeImage.image = TypeImageArray[indexPath.row]
        collectionBuyCell.TypeLabel.text = TypeLabelArray[indexPath.row]
        return collectionBuyCell
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
