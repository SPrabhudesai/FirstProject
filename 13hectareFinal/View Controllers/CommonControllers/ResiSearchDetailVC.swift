//
//  ResiSearchDetailVC.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 25/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchDetailVC: UIViewController {

    var PriceLabelArray = ["Rs. 90 - 98 Lac"]
    var InfoLabelArray = ["3 BHK.Apartment.Under Construction"]
    var sec3Label1Array = ["Super Built up area", "Base Price/Unit Area", "Society"]
    var sec3Label2Array = ["Posted By", "Bathroom"]
    var sec3Label3Array = ["139-142 Sq.mt", "Rs 64585 per Sq.mt", "Hinjewadi"]
    var sec3Label4Array = ["Dealer (yesterday)", "3"]
    var sec4Label1Array = ["Property Age", "Ownership", "Possession", "Address"]
    var sec4Label2Array = ["Under Construction", "Freehold", "Sep, 2021", "Hinjewadi"]
    var sec7ImageArray = [UIImage(named:"pic")]
    var collectionImageArray = [UIImage(named:"flat5"), UIImage(named:"flat6"), UIImage(named:"flat12")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayAlertMessage(userMessage:String)
    {
      let myAlert = UIAlertController(title: "Alert", message: userMessage, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default){
            UIAlertAction in
         let storyboard = UIStoryboard(name: "Main", bundle: nil)
         let destination = storyboard.instantiateViewController(withIdentifier: "ResiSearchNextVC")
            self.present(destination, animated: true, completion: nil)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil)
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        if presentedViewController == nil{
            present(myAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnBack(_ sender: Any) {
        displayAlertMessage(userMessage: "Would you like to go back")
       // self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func AmenityPopUpButton(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ResiSearchAmenitiesPopUpVC") as! ResiSearchAmenitiesPopUpVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func ViewContactButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "ViewContactVC")
        self.present(destination, animated: true, completion: nil)
    }
    @IBAction func SendMessageButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "SendMessageVC")
        self.present(destination, animated: true, completion: nil)
    }
    
}
extension ResiSearchDetailVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0{
//            return 1
//        }
//        else if section == 1{
//            return PriceLabelArray.count
//        }
//        else if section == 2{
//            return sec3Label3Array.count
//        }
//        else if section == 3{
//            return sec4Label1Array.count
//        }
//        else if section == 4{
//            return 1
//        }
//        else{
//            return 1
//        }
        switch section {
        case 0: return 1
        case 1: return PriceLabelArray.count
        case 2: return sec3Label3Array.count
        case 3: return sec4Label1Array.count
        case 4: return 1
        default:
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0{
//            let cell1 = tableView.dequeueReusableCell(withIdentifier: "DCell1", for: indexPath) as! ResiSearchDetailTableViewCell
//            cell1.layer.borderColor = UIColor.black.cgColor
//            cell1.layer.borderWidth = 1
//            return cell1
//        }
//        else if indexPath.section == 1{
//            let cell2 = tableView.dequeueReusableCell(withIdentifier: "DCell2", for: indexPath) as! ResiSearchDetailTableViewCell
//            cell2.PriceLabel.text = PriceLabelArray[indexPath.row]
//            cell2.InfoLabel.text = InfoLabelArray[indexPath.row]
//            return cell2
//        }
//        else if indexPath.section == 2{
//            let cell3 = tableView.dequeueReusableCell(withIdentifier: "DCell3", for: indexPath) as! ResiSearchDetailTableViewCell
//            cell3.sec3Label1.text = sec3Label1Array[indexPath.row]
//           // cell3.sec3Label2.text = sec3Label2Array[indexPath.section]
//            cell3.sec3Label3.text = sec3Label3Array[indexPath.row]
//          //   cell3.sec3Label4.text = sec3Label4Array[indexPath.row]
//            cell3.layer.borderWidth = 0.25
//            cell3.layer.borderColor = UIColor.lightGray.cgColor
//        }
//        else if indexPath.section == 3{
//            let cell4 = tableView.dequeueReusableCell(withIdentifier: "DCell4", for: indexPath) as! ResiSearchDetailTableViewCell
//            cell4.sec4Label1.text = sec4Label1Array[indexPath.row]
//            cell4.sec4Label2.text = sec4Label2Array[indexPath.row]
//            return cell4
//        }
//        else if indexPath.section == 4{
//            let cell5 = tableView.dequeueReusableCell(withIdentifier: "DCell5", for: indexPath) as! ResiSearchDetailTableViewCell
//            return cell5
//        }
//        else if indexPath.section == 5{
//            let cell6 = tableView.dequeueReusableCell(withIdentifier: "DCell6", for: indexPath) as! ResiSearchDetailTableViewCell
//            return cell6
//        }
//        else if indexPath.section == 6{
//            let cell7 = tableView.dequeueReusableCell(withIdentifier: "DCell7", for: indexPath) as! ResiSearchDetailTableViewCell
//            cell7.sec7Image.image = sec7ImageArray[indexPath.row]
//            return cell7
//        }
//        else{
//            return UITableViewCell()
//        }
        switch indexPath.section {
        case 0:
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "DCell1", for: indexPath) as! ResiSearchDetailTableViewCell
            cell1.layer.borderColor = UIColor.black.cgColor
            cell1.layer.borderWidth = 1
            return cell1
        case 1:
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "DCell2", for: indexPath) as! ResiSearchDetailTableViewCell
            cell2.PriceLabel.text = PriceLabelArray[indexPath.row]
            cell2.InfoLabel.text = InfoLabelArray[indexPath.row]
            return cell2
        case 2:
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "DCell3", for: indexPath) as! ResiSearchDetailTableViewCell
            cell3.sec3Label1.text = sec3Label1Array[indexPath.row]
            // cell3.sec3Label2.text = sec3Label2Array[indexPath.section]
            cell3.sec3Label3.text = sec3Label3Array[indexPath.row]
            //   cell3.sec3Label4.text = sec3Label4Array[indexPath.row]
            cell3.layer.borderWidth = 0.25
            cell3.layer.borderColor = UIColor.lightGray.cgColor
        case 3:
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "DCell4", for: indexPath) as! ResiSearchDetailTableViewCell
            cell4.sec4Label1.text = sec4Label1Array[indexPath.row]
            cell4.sec4Label2.text = sec4Label2Array[indexPath.row]
            return cell4
        case 4:
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "DCell5", for: indexPath) as! ResiSearchDetailTableViewCell
            return cell5
        case 5:
            let cell6 = tableView.dequeueReusableCell(withIdentifier: "DCell6", for: indexPath) as! ResiSearchDetailTableViewCell
            return cell6
        case 6:
            let cell7 = tableView.dequeueReusableCell(withIdentifier: "DCell7", for: indexPath) as! ResiSearchDetailTableViewCell
            cell7.sec7Image.image = sec7ImageArray[indexPath.row]
            return cell7
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:return 150
        case 1:return 80
        case 2:return 70
        case 3:return 40
        case 4:return 60
        case 5:return 100
        case 6:return 100
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 3: return "Additional Details"
        case 4: return "Amenities"
        case 5: return "Location"
        case 6: return "Dealer Details"
        default: break
        }
        return ""
    }
}
extension ResiSearchDetailVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collCell = collectionView.dequeueReusableCell(withReuseIdentifier: "colCell", for: indexPath) as! ResiSearchDetailCollectionViewCell
        collCell.collectionImage.image = collectionImageArray[indexPath.row]
        return collCell
    }
}
