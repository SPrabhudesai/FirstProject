//
//  ResiSearchDetailTableViewCell.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 25/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var InfoLabel: UILabel!
    @IBOutlet weak var sec3Label1: UILabel!
    @IBOutlet weak var sec3Label2: UILabel!
    @IBOutlet weak var sec3Label3: UILabel!
    @IBOutlet weak var sec3Label4: UILabel!
    @IBOutlet weak var sec4Label1: UILabel!
    @IBOutlet weak var sec4Label2: UILabel!
    @IBOutlet weak var sec7Image: UIImageView!
    @IBOutlet weak var sec7Label1: UILabel!
    @IBOutlet weak var sec7Label2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
