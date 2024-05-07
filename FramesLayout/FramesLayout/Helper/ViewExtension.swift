//
//  ViewExtension.swift
//  FramesLayout
//
//  Created by orange on 29/04/24.
//

import Foundation
import UIKit

extension UIView {
    
    //MARK:- Corner Radius for all corners
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
    
    //MARK:- Border Width
    @IBInspectable var borderWidth : CGFloat {
        get {
            return self.layer.borderWidth
        }
        set {
            self.layer.borderWidth = newValue
        }
    }
    
    //MARK:- Border Color
    @IBInspectable var borderColor : UIColor {
        get {
            return self.borderColor
        }
        set {
            self.borderColor(color: newValue)
        }
    }
    
    //MARK:- Shadow Offset
    @IBInspectable var shadowOffset: CGSize {
        get {
            return self.layer.shadowOffset
        }
        set {
            self.layer.shadowOffset = newValue
        }
    }
    
    //MARK:- Shadow Color
    @IBInspectable var shadowColor: UIColor {
        get {
            return UIColor(cgColor: self.layer.shadowColor!)
        }
        set {
            self.layer.shadowColor = newValue.cgColor
        }
    }
    
    //MARK:- Shadow Radius
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return self.layer.shadowRadius
        }
        set {
            self.layer.shadowRadius = newValue
        }
    }
    
    //MARK:- Shadow Opacity
    @IBInspectable var shadowOpacity: Float {
        get {
            return self.layer.shadowOpacity
        }
        set {
            self.layer.shadowOpacity = newValue
        }
    }
    
    //MARK:- Border for View
    func borderColor(color : UIColor) {
        self.layer.borderColor = color.cgColor
    }
    
    //MARK:- Corners Radius for different corners
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func addTopShadow(shadowColor : UIColor, shadowOpacity : Float, shadowRadius : Float, offset:CGSize) {
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowRadius = CGFloat(shadowRadius)
        self.clipsToBounds = false
    }
}

