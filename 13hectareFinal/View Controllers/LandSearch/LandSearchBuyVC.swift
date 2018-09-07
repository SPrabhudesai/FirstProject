//
//  LandSearchBuyVC.swift
//  LandSearch
//
//  Created by Deeva Infotech LLP on 17/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandSearchBuyVC: UIViewController {
    @IBOutlet weak var BuyTableView: UITableView!
   
    
    var landTypeImageArray = [UIImage(named:"Residential Land.jpg"), UIImage(named:"Commercial Land.jpg"), UIImage(named:"Agricultural Land.jpg"), UIImage(named:"settings")]
    var LandTypeLabelArray = ["Residential", "Commercial", "Agri./Farm Land", "Industrial"]
    
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
extension LandSearchBuyVC : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let LandCell1 = tableView.dequeueReusableCell(withIdentifier: "LandBuyCell1", for: indexPath) as! LandSearchBuyTableViewCell
            return LandCell1
        case 1:
            let LandCell2 = tableView.dequeueReusableCell(withIdentifier: "LandBuyCell2", for: indexPath) as! LandSearchBuyTableViewCell
            slider1 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            LandCell2.addSubview(slider1)
            return LandCell2
        case 2:
            let LandCell3 = tableView.dequeueReusableCell(withIdentifier: "LandBuyCell3", for: indexPath) as! LandSearchBuyTableViewCell
            return LandCell3
        case 3:
            let LandCell4 = tableView.dequeueReusableCell(withIdentifier: "LandBuyCell4", for: indexPath) as! LandSearchBuyTableViewCell
            slider2 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            LandCell4.addSubview(slider2)
            return LandCell4
        default:
            break
        }
        return  UITableViewCell()
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Location"
        case 1: return "Price Range"
        case 2: return "Land Type"
        case 3: return "Area"
        default:break
        }
        return ""
    }
}
extension LandSearchBuyVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return landTypeImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandBuyCell", for: indexPath) as! LandSearchBuyCollectionViewCell
        collectionCell.LandTypeImage.image = landTypeImageArray[indexPath.row]
        collectionCell.LandTypeLabel.text = LandTypeLabelArray[indexPath.row]
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 2
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        self._selectedPropertyTypeCells.add(indexPath.row)
        collectionView.allowsMultipleSelection = true
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.white.cgColor
        self._selectedPropertyTypeCells.remove(indexPath.row)
    }
    
}
