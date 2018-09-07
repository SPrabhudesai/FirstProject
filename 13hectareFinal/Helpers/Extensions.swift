//
//  Extensions.swift
//  PotterPics
//
//  Created by Suraya Shivji on 11/24/16.
//  Copyright © 2016 Suraya Shivji. All rights reserved.
//

import UIKit

// rgb to uicolor
extension UIColor {
    
    class func potter_rbg(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        let color = UIColor.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
        return color
    }
    
}

// crop uiimage into a circle
extension UIImage {
    
    var potter_circle: UIImage? {
        let square = CGSize(width: min(size.width, size.height), height: min(size.width, size.height))
        let imageView = UIImageView(frame: CGRect(origin: .zero, size: square))
        imageView.contentMode = .scaleAspectFill
        imageView.image = self
        imageView.layer.cornerRadius = square.width/2
        imageView.layer.masksToBounds = true
        UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        imageView.layer.render(in: context)
        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return result
    }
}

// hide keyboards in view controllers
extension UIViewController {
    var hindOnTapped:Bool{
        set{
            
            if newValue == true{
                let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dissmessKeyBord))
                tap.cancelsTouchesInView = true
                view.addGestureRecognizer(tap)
            }
        }get{
            return self.hindOnTapped
        }
    }
    @objc func dissmessKeyBord(){
        view.endEditing(true)
    }
    
}

// store colors on user defaults
extension UserDefaults {
    func potter_colorForKey(key: String) -> UIColor? {
        var color: UIColor?
        if let colorData = data(forKey: key) {
            color = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
        }
        return color
    }
    
    func potter_setColor(color: UIColor?, forKey key: String) {
        var colorData: NSData?
        if let color = color {
            colorData = NSKeyedArchiver.archivedData(withRootObject: color) as NSData?
        }
        set(colorData, forKey: key)
    }
}
extension UIView{
    @IBInspectable var cornerRadius:CGFloat{
        set{
            self.layer.cornerRadius = newValue
        }
        get{
            return self.cornerRadius
        }
    }
    
    @IBInspectable var borderColor:UIColor?{
        set{
            self.layer.borderColor = newValue?.cgColor
        }
        get{
            if let color = layer.borderColor{
                return UIColor(cgColor: color)
            }else{
                return nil
            }
            
        }
    }

    
}
extension UITextField {
    @IBInspectable var bottomBorder:Int{
        set{
                let border = CALayer()
                let width = CGFloat(1.0)
                border.borderColor = UIColor.black.cgColor
                border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
                border.borderWidth = width
                self.layer.addSublayer(border)
                self.layer.masksToBounds = true
            
        }
        get{
            return self.bottomBorder
        }
    }
    
    
}

extension UIButton{
    @IBInspectable var bottomButtonBorder:CGFloat{
        set{
            let border = CALayer()
            let width = CGFloat(1.0)
            border.borderColor = UIColor.black.cgColor
            border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
            border.borderWidth = width
            self.layer.addSublayer(border)
        }
        get{
            return self.bottomButtonBorder
        }
    }
}

