//
//  PostResi_Rent_TableViewCell.swift
//  postResi
//
//  Created by Deeva Infotech on 27/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class PostResi_Rent_TableViewCell: UITableViewCell {

    @IBOutlet weak var collectionview: UICollectionView!
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
