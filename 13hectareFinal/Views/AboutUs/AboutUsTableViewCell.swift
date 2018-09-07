//
//  AboutUsTableViewCell.swift
//  Final
//
//  Created by Deeva Infotech on 22/12/17.
//  Copyright © 2017 Deeva Infotech. All rights reserved.
//

import UIKit

class AboutUsTableViewCell: UITableViewCell {
    @IBOutlet weak var HeadingLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
  //  @IBOutlet weak var TndCLabel: UILabel!
   // @IBOutlet weak var PrivatePolicyLabel: UILabel!
    //@IBOutlet weak var LegalInfoLabel: UILabel!
    @IBOutlet weak var ContactLabel: UILabel!
    @IBOutlet weak var VersionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
