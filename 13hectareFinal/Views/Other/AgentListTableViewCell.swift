//
//  AgentListTableViewCell.swift
//  AgentListModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class AgentListTableViewCell: UITableViewCell {
    @IBOutlet weak var AgentImage: UIImageView!
    @IBOutlet weak var AgentNameLabel: UILabel!
    @IBOutlet weak var AgentContactLabel: UILabel!
    @IBOutlet weak var AgentEmailLabel: UILabel!
    @IBOutlet weak var AgentAreaLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
