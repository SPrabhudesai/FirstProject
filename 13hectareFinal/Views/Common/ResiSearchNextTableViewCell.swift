//
//  ResiSearchNextTableViewCell.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech on 27/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class ResiSearchNextTableViewCell: UITableViewCell {
    @IBOutlet weak var PropertyImage: UIImageView!
    @IBOutlet weak var CostLabel: UILabel!
    @IBOutlet weak var ProjectLebel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    @IBOutlet weak var BhkLabel: UILabel!
    @IBOutlet weak var PostedByLabel: UILabel!
    @IBOutlet weak var PostedOnLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
