//
//  Post_PG_TableViewCell.swift
//  13hectareFinal
//
//  Created by Deeva Infotech LLP on 01/03/18.
//  Copyright © 2018 Deeva Infotech LLP. All rights reserved.
//

import UIKit

class Post_PG_TableViewCell: UITableViewCell {
    @IBOutlet weak var collectionview: UICollectionView!
    @IBOutlet weak var btnTakePhoto: UIButton!
    @IBOutlet weak var btnOpenCamera: UIButton!
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var localityTextField: UITextField!
    @IBOutlet weak var projectTextField: UITextField!
    @IBOutlet weak var landmarkTextField: UITextField!
    
    @IBOutlet weak var boy_btn: UIButton!
    @IBOutlet weak var girl_btn: UIButton!
    @IBOutlet weak var both_btn: UIButton!
    
    
    @IBOutlet weak var student_btn: UIButton!
    @IBOutlet weak var professional_btn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
