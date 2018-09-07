//
//  ManageEditListingTableViewCell.swift
//  ManageEditListingModule
//
//  Created by Deeva Infotech on 06/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class ManageEditListingTableViewCell: UITableViewCell {
    @IBOutlet weak var LabelOne: UILabel!
    @IBOutlet weak var ListingLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var AreaLabel: UILabel!
    @IBOutlet weak var PercentileLabel: UILabel!
    @IBOutlet weak var LocalityPerLabel: UILabel!
    @IBOutlet weak var ListingCompletenessLabel: UILabel!
    @IBOutlet weak var btnAddPhoto: UIButton!
    @IBOutlet weak var btnPastPerformance: UIButton!
    @IBOutlet weak var btnBoost: UIButton!
    @IBOutlet weak var btnExtendDuration: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
