//
//  UIViewExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UIView {
    
    func generateImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, UIScreen.main.scale)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
    public var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    
    public func hideAnimated(completion: (()->())? = nil) {
        if isHidden {
            return
        }
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0.0
        }) { Bool in
            self.isHidden = true
            completion?()
        }
    }
    
    public func showAnimated(completion: (()->())? = nil) {
        if !isHidden {
            return
        }
        
        self.alpha = 0.0
        self.isHidden = false
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 1.0
        }) { Bool in
            completion?()
        }
    }
    
    public func changeBackgroundColorAnimated(_ color: UIColor) {
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = color
        }
    }
    
}
