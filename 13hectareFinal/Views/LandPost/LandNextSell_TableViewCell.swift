//
//  LandNextSell_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 09/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class LandNextSell_TableViewCell: UITableViewCell {
    @IBOutlet weak var LandSAkingPriceTextField: UITextField!
    
    @IBOutlet weak var LandSMaintanceTextField: UITextField!
    
    @IBOutlet weak var LandSAmeniTextField: UITextField!
    
    @IBOutlet weak var LandSPlotTextField: UITextField!
    
    @IBOutlet weak var LandUnitTextField: UITextField!
    
    @IBOutlet weak var LandPriceunitTextField: UITextField!
    
    @IBOutlet weak var LandSellPossessionTextField: UITextField!
    
    @IBOutlet weak var LandSelllMonthTextField: UITextField!
    
    @IBOutlet weak var LandSellOtherTextView: UITextView!
    
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
