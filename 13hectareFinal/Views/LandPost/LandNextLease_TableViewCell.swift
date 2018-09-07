//
//  LandNextLease_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 09/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandNextLease_TableViewCell: UITableViewCell {
    @IBOutlet weak var LandLLeaseTextField: UITextField!
    
    @IBOutlet weak var LandLMaintanTextField: UITextField!
    
    @IBOutlet weak var LandLAmenitTextField: UITextField!
    
    @IBOutlet weak var LandLPlotTextField: UITextField!
    
    @IBOutlet weak var LandLUnitTextField: UITextField!
    
    @IBOutlet weak var LandPriceunitTextField: UITextField!
    
    @IBOutlet weak var LandLPossessionTextField: UITextField!
    
    @IBOutlet weak var LandLMonthTextField: UITextField!
    
    @IBOutlet weak var otherTextView: UITextView!
    
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
