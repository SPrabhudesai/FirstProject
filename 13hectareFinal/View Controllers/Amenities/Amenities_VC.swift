//
//  Amenities_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 28/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Amenities_VC: UIViewController {
var AmenitiesName = ["A","A","A","A","A"]
    var AmenitiesIcon = [UIImage(named:"About us.jpg"), UIImage(named:"About us.jpg"), UIImage(named:"About us.jpg"), UIImage(named:"About us.jpg"), UIImage(named:"About us.jpg")]
    var AmenitiesName1 = ["A","A","A","A","A"]
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
    @IBAction func btnDone(_ sender: Any) {
        print("The select value is:\(_selectedPropertyTypeCells)")
        print("The select 2 value is:\(_selectedPropertyTypeCells1)")
    }
    
 
}
    //MARK: Tableview methods
extension Amenities_VC:UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section){
        case 0:
        let cell = tableView.dequeueReusableCell(withIdentifier: "Amenities_TableViewCell", for: indexPath) as! Amenities_TableViewCell
        return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "Amenities_TableViewCell", for: indexPath) as! Amenities_TableViewCell
            return cell
        default:
            break
            
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 235
        case 1:
            return 235
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "PROPERTY"
        case 1:
            return "SOCIETY"
        default:
            break
        }
        return ""
    }
}

extension Amenities_VC:UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView.tag {
        case 0:
            return AmenitiesName.count
        case 1:
            return AmenitiesName1.count
        default:
            break
        }
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView.tag {
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Amenities_CollectionViewCell", for: indexPath) as! Amenities_CollectionViewCell
            cell.nameAmenities.text = AmenitiesName[indexPath.row]
            cell.imgAmenities.image = AmenitiesIcon[indexPath.row]
            return cell
        case 1:
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "Amenities_CollectionViewCell", for: indexPath) as! Amenities_CollectionViewCell
            cell1.nameAmenities1.text = AmenitiesName1[indexPath.row]
            cell1.imgAmenities1.image = AmenitiesIcon[indexPath.row]
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
 
