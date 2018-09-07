//
//  CommSearchLeaseVC.swift
//  CommercialSearchh
//
//  Created by Deeva Infotech LLP on 19/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommSearchLeaseVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    
    var LeaseImageArray = [UIImage(named:"Office space.jpg"),UIImage(named:"Shop.jpg"),UIImage(named:"Showroom.jpg"),UIImage(named:"Ware House.jpg")]
    var LeaseLabelArray = ["Factory","Office/Space","Shop","Showroom","Ware House"]
    
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

extension CommSearchLeaseVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let leaseCell1 = tableView.dequeueReusableCell(withIdentifier: "LeaseCell1", for: indexPath) as! CommSearchLeaseTableViewCell
            return leaseCell1
        case 1:
            let leaseCell2 = tableView.dequeueReusableCell(withIdentifier: "LeaseCell2", for: indexPath) as! CommSearchLeaseTableViewCell
            slider1 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            leaseCell2.addSubview(slider1)
            return leaseCell2
        case 2:
            let leaseCell3 = tableView.dequeueReusableCell(withIdentifier: "LeaseCell3", for: indexPath) as! CommSearchLeaseTableViewCell
            return leaseCell3
        case 3:
            let leaseCell4 = tableView.dequeueReusableCell(withIdentifier: "LeaseCell4", for: indexPath) as! CommSearchLeaseTableViewCell
            slider2 = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            leaseCell4.addSubview(slider2)
            return leaseCell4
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
        switch section {
        case 0: return "Location"
        case 1: return "Price Range"
        case 2: return "Property Type"
        case 3: return "Area"
        default:break
        }
        return ""
    }
}

extension CommSearchLeaseVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return LeaseImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionLeaseCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionLeaseCell", for: indexPath) as! CommSearchLeaseCollectionViewCell
        collectionLeaseCell.LeaseImage.image = LeaseImageArray[indexPath.row]
        collectionLeaseCell.LeaseLabel.text = LeaseLabelArray[indexPath.row]
        
        return collectionLeaseCell
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
        _selectedPropertyTypeCells.add(indexPath.row)
    }
}
