//
//  LandSearchLeaseVC.swift
//  LandSearch
//
//  Created by Deeva Infotech LLP on 17/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandSearchLeaseVC: UIViewController {
    @IBOutlet weak var LeaseTableView: UITableView!
    
    var LandLeaseImageArray = [UIImage(named:"Residential Land.jpg"), UIImage(named:"Commercial Land.jpg"), UIImage(named:"Agricultural Land.jpg"), UIImage(named:"settings")]
    var LandLeaseLabelArray = ["Residential", "Commercial", "Agri./Farm Land", "Industrial"]
    
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

extension LandSearchLeaseVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let LeaseCell1 = tableView.dequeueReusableCell(withIdentifier: "LandLeaseCell1", for: indexPath) as! LandSearchLeaseTableViewCell
            return LeaseCell1
        case 1:
            let LeaseCell2 = tableView.dequeueReusableCell(withIdentifier: "LandLeaseCell2", for: indexPath) as! LandSearchLeaseTableViewCell
            slider1 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            LeaseCell2.addSubview(slider1)
            return LeaseCell2
        case 2:
            let LeaseCell3 = tableView.dequeueReusableCell(withIdentifier: "LandLeaseCell3", for: indexPath) as! LandSearchLeaseTableViewCell
            return LeaseCell3
        case 3:
            let LeaseCell4 = tableView.dequeueReusableCell(withIdentifier: "LandLeaseCell4", for: indexPath) as! LandSearchLeaseTableViewCell
            slider2 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            LeaseCell4.addSubview(slider2)
            return LeaseCell4
        default:
            break

        }
        return UITableViewCell()
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
extension LandSearchLeaseVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LandLeaseLabelArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collCell = collectionView.dequeueReusableCell(withReuseIdentifier: "LandLeaseCell", for: indexPath) as! LandSearchLeaseCollectionViewCell
        collCell.LandLeaseImage.image = LandLeaseImageArray[indexPath.row]
        collCell.LandLeaseLabel.text = LandLeaseLabelArray[indexPath.row]
        return collCell
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
