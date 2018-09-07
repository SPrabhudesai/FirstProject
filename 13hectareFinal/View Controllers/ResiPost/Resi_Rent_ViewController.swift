//
//  Resi_Rent_ViewController.swift
//  postResi
//
//  Created by Deeva Infotech on 27/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class Resi_Rent_ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var rentResiName = ["Apartment", "Builder floor", "House/villa", "Studio apartment", "Farm-house", "Serviced apartment"]
    var rentResiImage = [UIImage(named:"Apartment.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Studio Apartment.jpg"), UIImage(named:"Farm House.jpg"), UIImage(named:"Serviced Apartment.jpg")]
    
    public var indexpathCollection: IndexPath?
    public var rentCell: UITableViewCell?
    var selectedCell: NSMutableArray = []
    var count: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
     //   rentCell = tableview.dequeueReusableCell(withIdentifier: "PostResi_Rent_TableViewCell1", for: [0,0])
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 

}
extension Resi_Rent_ViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let sellCell = tableView.dequeueReusableCell(withIdentifier: "PostResi_Rent_TableViewCell1", for: indexPath)
            return sellCell
        case 1:
            let sellCell1 = tableView.dequeueReusableCell(withIdentifier: "PostResi_Rent_TableViewCell2", for: indexPath) as! PostResi_Rent_TableViewCell
            return sellCell1
        case 2:
            let sellCell2 = tableView.dequeueReusableCell(withIdentifier: "PostResi_Rent_TableViewCell3", for: indexPath) as! PostResi_Rent_TableViewCell
            return sellCell2
        default:
            break
        }
        return UITableViewCell()
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 350
        case 1:
            return 150
        case 2:
            return 265
        default:
            break
        }
        return 0
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0: return "Property Type"
        case 1: return "Property Photo"
        case 2: return "Property Address"
        default:
            break
        }
        return ""
    }

}
extension Resi_Rent_ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rentResiName.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostResi_Rent_CollectionViewCell", for: indexPath) as! PostResi_Rent_CollectionViewCell
        cell.RentImage.image = rentResiImage[indexPath.row]
        cell.RentPropertyName.text = rentResiName[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 1
        self.selectedCell.add(indexPath.row)
        collectionView.allowsMultipleSelection = true
        indexpathCollection = indexPath
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 0
        self.selectedCell.remove(indexPath.row)
    }
    
}

