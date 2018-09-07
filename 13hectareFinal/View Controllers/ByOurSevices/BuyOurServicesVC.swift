//
//  BuyOurServicesVC.swift
//  BuyOurServices
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class BuyOurServicesVC: UIViewController {
    @IBOutlet weak var MySegment: UISegmentedControl!
    @IBOutlet weak var OwnerView: UIView!
    @IBOutlet weak var DealerView: UIView!
    @IBOutlet weak var BuilderView: UIView!
    
    var bosImageArray = [UIImage(named:"flat1"), UIImage(named:"flat2"), UIImage(named:"flat3"), UIImage(named:"flat4")]
    var bosImageArray1 = [UIImage(named:"flat5"), UIImage(named:"flat6"), UIImage(named:"flat7"), UIImage(named:"flat8")]
    var bosImageArray2 = [UIImage(named:"flat9"), UIImage(named:"flat10"), UIImage(named:"flat11"), UIImage(named:"flat12")]
    override func viewDidLoad() {
        super.viewDidLoad()
        OwnerView.isHidden = false
        DealerView.isHidden = true
        BuilderView.isHidden = true
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
    
    
    @IBAction func SegmentValueChange(_ sender: Any) {
        switch MySegment.selectedSegmentIndex {
        case 0: OwnerView.isHidden = false
                DealerView.isHidden = true
                BuilderView.isHidden = true
        case 1: OwnerView.isHidden = true
                DealerView.isHidden = false
                BuilderView.isHidden = true
        case 2: OwnerView.isHidden = true
                DealerView.isHidden = true
                BuilderView.isHidden = false
        default:break
        }
    }
}
extension BuyOurServicesVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bosImageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let bosCell = collectionView.dequeueReusableCell(withReuseIdentifier: "bosCell", for: indexPath) as! BOSCollectionViewCell
        if MySegment.selectedSegmentIndex == 0 {
        bosCell.bosImage.image = bosImageArray[indexPath.row]
        }
            else if (MySegment.selectedSegmentIndex == 1){
                bosCell.bosImage.image = bosImageArray1[indexPath.row]
            }
            else{
                bosCell.bosImage.image = bosImageArray2[indexPath.row]
            }
        return bosCell
    }
    
    
}
