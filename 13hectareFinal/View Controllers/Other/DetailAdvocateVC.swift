//
//  DetailAdvocateVC.swift
//  AdvocateOnCallModule
//
//  Created by Deeva Infotech LLP on 22/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit
import MessageUI

class DetailAdvocateVC: UIViewController , MFMessageComposeViewControllerDelegate{
    
   var getImage = UIImage()
   var getname = String()
   var getcontact = String()
   var getemail = String()
   var getadd = String()
   
    @IBOutlet weak var smsTextField: UITextView!
    @IBOutlet weak var AdvocateImage: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var ContactLabel: UILabel!
    @IBOutlet weak var EmailLabel: UILabel!
    @IBOutlet weak var AddressLabel: UILabel!
    @IBOutlet weak var btnCall: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AdvocateImage.image = getImage
        NameLabel.text = getname
        ContactLabel.text = getcontact
        EmailLabel.text = getemail
        AddressLabel.text = getadd
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBack(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "AdvocateVC") as! AdvocateVC
        self.present(destination, animated: true, completion: nil)
    }
    
    @IBAction func CallButton(_ sender: Any) {
        UIApplication.shared.open(NSURL(string: "tel://\(String(describing: ContactLabel.text))")! as URL)
       // var url:NSURL = NSURL(String: "tel://1234567890")!
        //UIApplication.shared.canOpenURL(url as URL)
    }
    
    @IBAction func sendText(_ sender: UIButton) {
        if(MFMessageComposeViewController.canSendText()){
            let controller = MFMessageComposeViewController()
            controller.body = self.smsTextField.text
            controller.recipients  = [self.ContactLabel.text!]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }
        else{
            print("Error")
        }
    }
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }

 
}
