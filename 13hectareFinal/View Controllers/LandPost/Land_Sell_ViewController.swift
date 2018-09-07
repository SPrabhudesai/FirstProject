//
//  Land_Sell_ViewController.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Land_Sell_ViewController: UIViewController {
    @IBOutlet weak var tableview: UITableView!
    var SellLandName = ["Residential", "Commercial", "Agri./Farm Land", "Industrial"]
    var SellLandImage = [UIImage(named:"Residential Land.jpg"), UIImage(named:"Commercial Land.jpg"), UIImage(named:"Agricultural Land.jpg"), UIImage(named:"settings")]
    var selectedCell:NSMutableArray = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension Land_Sell_ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostLand_SellTableViewCell1", for: indexPath) as! PostLand_SellTableViewCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostLand_SellTableViewCell2", for: indexPath) as! PostLand_SellTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "PostLand_SellTableViewCell3", for: indexPath) as! PostLand_SellTableViewCell

        default:
            break
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 127
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
extension Land_Sell_ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SellLandName.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostLand_SellCollectionViewCell", for: indexPath) as! PostLand_SellCollectionViewCell
        cell.LandImage.image = SellLandImage[indexPath.row]
        cell.LandName.text = SellLandName[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 1
        self.selectedCell.add(indexPath.row)
        collectionView.allowsMultipleSelection = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderWidth = 0
        self.selectedCell.remove(indexPath.row)
    }
    
}
