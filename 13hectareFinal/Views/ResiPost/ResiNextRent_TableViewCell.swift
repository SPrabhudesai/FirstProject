//
//  ResiNextRent_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 08/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiNextRent_TableViewCell: UITableViewCell {
    
    @IBOutlet weak var RRexpectedRentTextField: UITextField!
    
    @IBOutlet weak var RRmaintanceTextField: UITextField!
    
    @IBOutlet weak var RRdepositeTextField: UITextField!
    
    @IBOutlet weak var RRbrokerageTextField: UITextField!
    
    
    @IBOutlet weak var RRbedroomTextField: UITextField!
    
    @IBOutlet weak var RRbathroomTextField: UITextField!
    
    @IBOutlet weak var RRbalconiesTextField: UITextField!
    
    @IBOutlet weak var RRamenitiesTextField: UITextField!
    
    @IBOutlet weak var RRbuiltupTextField: UITextField!
    @IBOutlet weak var RRcarpetTextField: UITextField!
    @IBOutlet weak var RRunitTextField: UITextField!
    @IBOutlet weak var RRunit1TextField: UITextField!
    
    @IBOutlet weak var RRtotalFloorsTextFiled: UITextField!
    @IBOutlet weak var RRpropertFloorTextField: UITextField!
    
    @IBOutlet weak var RRpropertyAge: UITextField!
    
    @IBOutlet weak var RRaboutPropertyTextView: UITextView!
    
    @IBOutlet weak var RRsubscriptionTextField: UITextField!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
