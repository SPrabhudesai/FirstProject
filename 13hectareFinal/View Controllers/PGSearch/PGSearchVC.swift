//
//  PGSearchVC.swift
//  PGSearch
//
//  Created by Deeva Infotech on 30/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class PGSearchVC: UIViewController {

    @IBOutlet weak var MyTableView: UITableView!
    var PGRoomTypeImageArray = [UIImage(named:"Apartment.jpg"),UIImage(named:"HouseVilla.jpg"),UIImage(named:"Builder floor.jpg"),UIImage(named:"Studio Apartment.jpg"),UIImage(named:"Serviced Apartment.jpg")]
    var PGRoomTypeNameArray = ["Residential Apartment", "Independent House", "Independent/Builder Floor", "Studio Apartment", "Serviced Apartment"]
    var slider: NHRangeSliderView = NHRangeSliderView()
    
    var _selectedPropertyTypeCells : NSMutableArray = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnBack(_ sender: Any) {
       // self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func btnSearch(_ sender: Any) {
        print( "BuyPriceRangeMin :", slider.lowerLabel?.text as Any)
        print( "BuyPriceRangeMax :", slider.upperLabel?.text as Any)
        print( "Selected Property Cell : ", _selectedPropertyTypeCells as Any)
    }
}
extension PGSearchVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "pgCell1", for: indexPath) as! PGSearchTableViewCell
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "pgCell2", for: indexPath) as! PGSearchTableViewCell
            slider = CommonFunctionsVC().RangeSlider( minVal: 0, maxVal: 1000, lowerVal: 180, upperVal: 340, gapVal: 10)
            cell.addSubview(slider)
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "pgCell3", for: indexPath) as! PGSearchTableViewCell
        case 3:
             cell = tableView.dequeueReusableCell(withIdentifier: "pgCell4", for: indexPath) as! PGSearchTableViewCell
        case 4:
            cell = tableView.dequeueReusableCell(withIdentifier: "pgCell5", for: indexPath) as! PGSearchTableViewCell
            
        default:
            break
            
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 100
        case 1: return 150
        case 2: return 100
        case 3: return 150
        case 4: return 100
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
        switch (section) {
        case 0: return "Location"
        case 1: return "Price Range"
        case 2: return "Gender"
        case 3: return "Room Share Type"
        case 4: return "Room Type"
        default:break
        }
        return ""
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
}
extension PGSearchVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return PGRoomTypeImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! PGSearchCollectionViewCell
        collectionCell.PGRoomType.text = PGRoomTypeNameArray[indexPath.row]
        collectionCell.PGRoomTypeImage.image = PGRoomTypeImageArray[indexPath.row]
        return collectionCell
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
