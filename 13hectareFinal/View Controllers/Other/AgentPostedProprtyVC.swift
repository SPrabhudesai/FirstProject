//
//  AgentPostedProprtyVC.swift
//  AgentListModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class AgentPostedProprtyVC: UIViewController {
//    var getImage = UIImage()
//    var getName = String()
//    var getContact = String()
//    var getEmail = String()
//    var getArea = String()
//    @IBOutlet weak var AgentImg: UIImageView!
//    @IBOutlet weak var NameLabel: UILabel!
//    @IBOutlet weak var ContactLabel: UILabel!
//    @IBOutlet weak var EmailLabel: UILabel!
//    @IBOutlet weak var AreaLabel: UILabel!
//    @IBOutlet weak var CallBuuton: UIButton!
//    @IBOutlet weak var TextMsgButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        AgentImg.image = getImage
//        NameLabel.text = getName
//        ContactLabel.text = getContact
//        EmailLabel.text = getEmail
//        AreaLabel.text = getArea
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        //self.dismiss(animated: true, completion: nil)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "AgentListVC") as! AgentListVC
        self.present(destination, animated: true, completion: nil)
    }
    
 //   @IBAction func CallButton(_ sender: UIButton) {
  //  }
  //  @IBAction func SendMsgButton(_ sender: UIButton) {
//       // AgentPostedProprtyVC.sendMessageToNumber(number: <#String#>, message: <#String#>)
//        let sms = "sms:\(number)&body=\(message)"
//        let url = URL(string:sms)!
//        let shared = UIApplication.shared
//
//        if(shared.canOpenURL(url)){
//            shared.openURL(url)
//        }else{
//            print("unable to send message")
//        }
   // }
    /*
    static func sendMessageToNumber(number:String,message:String){
        
        let sms = "sms:\(number)&body=\(message)"
        let url = URL(string:sms)!
        let shared = UIApplication.shared
        
        if(shared.canOpenURL(url)){
            shared.openURL(url)
        }else{
            print("unable to send message")
        }
    }*/
}
