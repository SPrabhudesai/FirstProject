//
//  PGSearchTableViewCell.swift
//  PGSearch
//
//  Created by Deeva Infotech on 30/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class PGSearchTableViewCell: UITableViewCell {
    @IBOutlet weak var btnGender: DLRadioButton!
    
    @IBOutlet weak var btnShareType: DLRadioButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
