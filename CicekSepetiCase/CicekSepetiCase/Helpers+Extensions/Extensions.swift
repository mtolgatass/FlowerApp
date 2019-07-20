//
//  Extensions.swift
//  CicekSepetiCase
//
//  Created by Tolga Taş on 20.07.2019.
//  Copyright © 2019 Tolga Taş. All rights reserved.
//

import Foundation
import UIKit
import AlamofireImage

extension UIView {
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            let color = UIColor(cgColor: layer.borderColor!)
            return color
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 0, height: 2)
            layer.shadowOpacity = 0.4
            layer.shadowRadius = shadowRadius
        }
    }
}
extension String{
    func strikeThroughAttribute() -> NSMutableAttributedString{
        let strokeAttribute = [
            NSAttributedString.Key.strikethroughStyle : NSUnderlineStyle.single.rawValue,
            ] as [NSAttributedString.Key : Any]
        return NSMutableAttributedString(string: self, attributes: strokeAttribute)
    }
}
