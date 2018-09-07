//
//  CommNextLease_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 09/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommNextLease_TableViewCell: UITableViewCell {
    
    @IBOutlet weak var CLExpectedLeaseTextField: UITextField!
    @IBOutlet weak var CLMaintanceTextField: UITextField!
    
    @IBOutlet weak var CLWashroomTextField: UITextField!
    @IBOutlet weak var CLAmenitiesTextField: UITextField!
    
    @IBOutlet weak var CLBuiltAreaTextField: UITextField!
    @IBOutlet weak var CLCarpetAreaTextField: UITextField!
    
    @IBOutlet weak var CLUnitTextField: UITextField!
    @IBOutlet weak var CLUnit1TextField: UITextField!

    @IBOutlet weak var CLAvailibilityTextField: UITextField!
    
    @IBOutlet weak var CLOtherDetailstextView: UITextView!
    
    @IBOutlet weak var CLSubscripTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
