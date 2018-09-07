//
//  Resi_Sell_ViewController.swift
//  postResi
//
//  Created by Deeva Infotech on 27/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class Resi_Sell_ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var sellResiName = ["Apartment", "Builder floor", "House/villa", "Studio apartment", "Farm-house", "Serviced apartment"]
    var sellResiImage = [UIImage(named:"Apartment.jpg"), UIImage(named:"Builder floor.jpg"), UIImage(named:"HouseVilla.jpg"), UIImage(named:"Studio Apartment.jpg"), UIImage(named:"Farm House.jpg"), UIImage(named:"Serviced Apartment.jpg")] 
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
extension Resi_Sell_ViewController:UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let sellCell = tableView.dequeueReusableCell(withIdentifier: "PostResi_TableViewCell1", for: indexPath)
            return sellCell
        case 1:
            let sellCell1 = tableView.dequeueReusableCell(withIdentifier: "PostResi_TableViewCell2", for: indexPath) as! PostResi_TableViewCell
            return sellCell1
        case 2:
            let sellCell2 = tableView.dequeueReusableCell(withIdentifier: "PostResi_TableViewCell3", for: indexPath) as! PostResi_TableViewCell
            return sellCell2
        default:
            break
        }
        return UITableViewCell()
        
    }
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 100
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
extension Resi_Sell_ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sellResiName.count
    
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PostResi_Sell_CollectionViewCell", for: indexPath) as! PostResi_Sell_CollectionViewCell
        cell.sellImage.image = sellResiImage[indexPath.row]
        cell.sellPropertyName.text = sellResiName[indexPath.row]
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





