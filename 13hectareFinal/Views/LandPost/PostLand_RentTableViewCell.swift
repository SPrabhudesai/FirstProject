//
//  PostLand_RentTableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class PostLand_RentTableViewCell: UITableViewCell {
    @IBOutlet weak var btnTakePhoto: UIButton!
    @IBOutlet weak var btnOpenCamera: UIButton!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var localityTextField: UITextField!
    @IBOutlet weak var projectTextField: UITextField!
    @IBOutlet weak var landmarkTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
