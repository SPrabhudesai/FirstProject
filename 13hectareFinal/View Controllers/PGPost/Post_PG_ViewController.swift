//
//  Post_PG_ViewController.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Post_PG_ViewController: UIViewController {
    var PGName = ["Residential Apartment", "Independent House", "Independent/Builder Floor", "Studio Apartment", "Serviced Apartment"]
    var PGImage = [UIImage(named:"Apartment.jpg"),UIImage(named:"HouseVilla.jpg"),UIImage(named:"Builder floor.jpg"),UIImage(named:"Studio Apartment.jpg"),UIImage(named:"Serviced Apartment.jpg")]
    var selectedCell: NSMutableArray = []
    var PGCell = Post_PG_TableViewCell()
    
    
    var selectedOption: IndexPath = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      PGCell = tableView.dequeueReusableCell(withIdentifier: "Post_PG_TableViewCell1", for: [0,0]) as! Post_PG_TableViewCell
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BtnNext(_ sender: Any) {
    
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let destination = storybord.instantiateViewController(withIdentifier: "PGNext_VC") as! PGNext_VC
        self.present(destination, animated: true, completion: nil)
        

    }
    
    
    
    
    @IBAction func BtnBack(_ sender: Any) {
        let storybord = UIStoryboard(name: "Main", bundle: nil)
        let controller = storybord.instantiateViewController(withIdentifier: "SWRevealViewController") as! SWRevealViewController
        self.present(controller, animated: true, completion: nil)
    }
    
    

}
extension Post_PG_ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section{
        case 0:
            let PGCell = tableView.dequeueReusableCell(withIdentifier: "Post_PG_TableViewCell1", for: indexPath) as! Post_PG_TableViewCell
            return PGCell
            
        case 1:
            let PGCell1 = tableView.dequeueReusableCell(withIdentifier: "Post_PG_TableViewCell2", for: indexPath) as! Post_PG_TableViewCell
            return PGCell1
        case 2:
            let PGCell2 = tableView.dequeueReusableCell(withIdentifier: "Post_PG_TableViewCell3", for: indexPath) as! Post_PG_TableViewCell
            
            PGCell2.cityTextField.placeholder = "City"
            PGCell2.localityTextField.placeholder = "Locality"
            PGCell2.projectTextField.placeholder = "Society OR Project"
            PGCell2.landmarkTextField.placeholder = "Landmark"
 
        default:
            break
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 300
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
extension Post_PG_ViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionView.allowsMultipleSelection = false
        return PGName.count
        
    }
    
   

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Post_PG_CollectionViewCell", for: indexPath) as! Post_PG_CollectionViewCell
        cell.PGPropertyName.text = PGName[indexPath.row]
        cell.PGImage.image = PGImage[indexPath.row]
        cell.layer.borderColor = UIColor.white.cgColor
        cell.layer.borderWidth = 0
        
        return cell
    }
    

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.selectedCell.removeAllObjects()
    
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.layer.borderColor = UIColor.lightGray.cgColor
        cell?.layer.borderWidth = 1
        self.selectedOption = indexPath
        self.selectedCell.add(indexPath)
    }
    
    
    
}
