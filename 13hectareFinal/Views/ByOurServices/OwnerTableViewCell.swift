//
//  OwnerTableViewCell.swift
//  BuyOurServices
//
//  Created by Deeva Infotech LLP on 20/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class OwnerTableViewCell: UITableViewCell {

    @IBOutlet weak var ownerListingLabel: UILabel!
    @IBOutlet weak var ownerPriceLabel: UILabel!
    @IBOutlet weak var ownerDescriptionLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
