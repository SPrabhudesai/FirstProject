//
//  ResiSearchBuyTableViewCell.swift
//  ResidentialSearch
//
//  Created by Deeva Infotech LLP on 15/01/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class ResiSearchBuyTableViewCell: UITableViewCell {
    @IBOutlet weak var PropertyCollection: UICollectionView!
    
    @IBOutlet weak var BedroomCollection: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
