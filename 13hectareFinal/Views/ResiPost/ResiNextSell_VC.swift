//
//  ResiNextSell_VC.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 08/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiNextSell_VC: UITableViewCell {
    @IBOutlet weak var priceTextField: UITextField!
    
    @IBOutlet weak var bedroomTextField: UITextField!
    @IBOutlet weak var bathroomTextField: UITextField!
    @IBOutlet weak var balconiesTextField: UITextField!
    @IBOutlet weak var amenitiesTextField: UITextField!
    
    @IBOutlet weak var builtupTextField: UITextField!
    @IBOutlet weak var carpetTextField: UITextField!
    
    @IBOutlet weak var unitTextField: UITextField!
    @IBOutlet weak var unit1TextField: UITextField!
    
    @IBOutlet weak var totalFloorsTextFiled: UITextField!
    @IBOutlet weak var propertFloorTextField: UITextField!
    
    @IBOutlet weak var openParkingTextField: UITextField!
    @IBOutlet weak var reservedParkingTextField: UITextField!
    
    @IBOutlet weak var resaleTextField: UITextField!

    @IBOutlet weak var possessionTextField: UITextField!

    @IBOutlet weak var aboutPropertyTextView: UITextView!

    @IBOutlet weak var subscriptionTextField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
