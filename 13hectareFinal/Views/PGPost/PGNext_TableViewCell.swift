//
//  PGNext_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 08/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class PGNext_TableViewCell: UITableViewCell {
    @IBOutlet weak var PGExpectedRentTextfield: UITextField!
    @IBOutlet weak var PGMaintanceTextfield: UITextField!
    @IBOutlet weak var PGDepositeTextfield: UITextField!
    @IBOutlet weak var PGBrokragetextField: UITextField!
    @IBOutlet weak var PGMaintanceTypeText: UITextField!
    
    
    @IBOutlet weak var PGBedTextField: UITextField!
    @IBOutlet weak var PGBathTextField: UITextField!
    @IBOutlet weak var PGBalcaniesTextfield: UITextField!
    @IBOutlet weak var PGAmenitextField: UITextField!

    @IBOutlet weak var PGTFloorTextField: UITextField!
    @IBOutlet weak var PGPFloorTextField: UITextField!
    
    @IBOutlet weak var PGPropertyAgetextField: UITextField!
    @IBOutlet weak var PGAvailtextField: UITextField!
    
    @IBOutlet weak var PGOthertextview: UITextView!
    
    @IBOutlet weak var PGSubscriptionTextField: UITextField!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
