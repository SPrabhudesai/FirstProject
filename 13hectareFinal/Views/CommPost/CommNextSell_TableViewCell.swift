//
//  CommNextSell_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 09/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class CommNextSell_TableViewCell: UITableViewCell {

    @IBOutlet weak var CSaskingTextField: UITextField!
    @IBOutlet weak var CSmaintenanceTextField: UITextField!
    
    
    @IBOutlet weak var CSwashroomTextField: UITextField!
    @IBOutlet weak var CSamenitiesTextField: UITextField!
    
    
   @IBOutlet weak var CSbuiltTextField: UITextField!
     @IBOutlet weak var CSCarpetTextField: UITextField!
    
    @IBOutlet weak var CSunitTextField: UITextField!
    @IBOutlet weak var CSunit1: UITextField!
    
    @IBOutlet weak var CSownershipTextField: UITextField!
    
     @IBOutlet weak var CSpossessionTextField: UITextField!
    
     @IBOutlet weak var CSotherDetailsTextView: UITextView!
    @IBOutlet weak var CSsubscriptionTextField: UITextField!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
