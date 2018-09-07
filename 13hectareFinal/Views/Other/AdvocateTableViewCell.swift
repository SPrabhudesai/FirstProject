//
//  AdvocateTableViewCell.swift
//  AdvocateOnCallModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class AdvocateTableViewCell: UITableViewCell {
    @IBOutlet weak var AdvImage: UIImageView!
    @IBOutlet weak var advName: UILabel!
    @IBOutlet weak var advContactLabel: UILabel!
    @IBOutlet weak var advEmailLabel: UILabel!
    @IBOutlet weak var advAddress: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
