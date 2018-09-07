//
//  FeedbackListVC.swift
//  FeedbackModule
//
//  Created by Deeva Infotech LLP on 01/02/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class FeedbackListVC: UIViewController {
    var alert : CommonFunctionsVC?
    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClose(_ sender: Any) {
        removeAnimate()
    }
    func showAnimate()
    {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate()
    {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    
}
