//
//  Comm_Sell_ViewController.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Comm_Sell_ViewController: UIViewController {
        var sellCommName = ["Office space", "Shop", "Showroom", "Factory", "Ware House"]
        var sellCommImage = [UIImage(named:"Office space.jpg"), UIImage(named:"Shop.jpg"), UIImage(named:"Showroom.jpg"), UIImage(named:"Factory.jpg"), UIImage(named:"Ware House.jpg")]
    var selectedCell: NSMutableArray = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
extension Comm_Sell_ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
                let SellCell = tableView.dequeueReusableCell(withIdentifier: "PostComm_Sell_TableViewCell1", for: indexPath) as! PostComm_Sell_TableViewCell
            return SellCell
        
        case 1:
                let SellCell1 = tableView.dequeueReusableCell(withIdentifier: "PostComm_Sell_TableViewCell2", for: indexPath) as! PostComm_Sell_TableViewCell
                return SellCell1
        case 2:
                let SellCell2 = tableView.dequeueReusableCell(withIdentifier: "PostComm_Sell_TableViewCell3", for: indexPath) as! PostComm_Sell_TableViewCell
                return SellCell2
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
extension Comm_Sell_ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sellCommName.count
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostComm_Sell_CollectionViewCell", for: indexPath) as! PostComm_Sell_CollectionViewCell
        cell.SellImage.image = sellCommImage[indexPath.row]
        cell.RentPropertyName.text = sellCommName[indexPath.row]
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






