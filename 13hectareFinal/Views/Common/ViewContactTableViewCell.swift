//
//  ViewContactTableViewCell.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class ViewContactTableViewCell: UITableViewCell {
    @IBOutlet weak var viewconImage: UIImageView!
    @IBOutlet weak var viewconNameLable: UILabel!
    @IBOutlet weak var viewconAddLabel: UILabel!
    @IBOutlet weak var viewconSegment: UISegmentedControl!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var MobileTextField: UITextField!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
