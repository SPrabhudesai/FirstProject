//
//  ViewContactVC.swift
//  ResidentialSearchModule
//
//  Created by Deeva Infotech on 03/01/18.
//  Copyright © 2018 Deeva Infotech. All rights reserved.
//

import UIKit

class ViewContactVC: UIViewController {
    @IBOutlet weak var MyTableView: UITableView!
    
    var viewconImageArray = [UIImage(named:"profile")]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //self.view.endEditing(true)
        self.MyTableView.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        //return self.MyTableView.endEditing(false)

        textField .becomeFirstResponder()
        return true
    }
    
}
extension ViewContactVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewContactTableViewCell
        cell.viewconImage.image = viewconImageArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
}
