//
//  DetailVC.swift
//  AgentListModule
//
//  Created by Deeva Infotech LLP on 23/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    var getImage = UIImage()
    var getName = String()
    var getContact = String()
    var getEmail = String()
    var getArea = String()
    @IBOutlet weak var AgentImg: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var ContactLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var AreaLabel: UILabel!
    @IBOutlet weak var CallBuuton: UIButton!
    @IBOutlet weak var TextMsgButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        AgentImg.image = getImage
        NameLabel.text = getName
        ContactLabel.text = getContact
        EmailLabel.text = getEmail
        AreaLabel.text = getArea
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "AgentListVC") as! AgentListVC
        self.present(destination, animated: true, completion: nil)
    }
}
