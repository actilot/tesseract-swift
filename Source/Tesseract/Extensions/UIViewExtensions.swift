//
//  UIViewExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UIView {
  
  var parentStackView: UIStackView? {
         var parentResponder: UIResponder? = self
         while parentResponder != nil {
             parentResponder = parentResponder!.next
             if let stackView = parentResponder as? UIStackView {
                 return stackView
             }
         }
         return nil
   }
    
  var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
      
    func generateImage() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, UIScreen.main.scale)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image
    }
    
  func hideAnimated(completion: (()->())? = nil) {
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
    
  func showAnimated(completion: (()->())? = nil) {
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
    
  func changeBackgroundColorAnimated(_ color: UIColor) {
        UIView.animate(withDuration: 0.3) {
            self.backgroundColor = color
        }
    }
    
  func addShadow(_ opacity: CGFloat = 0.4, radius: CGFloat = 7.0) {
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = Float(opacity)
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = radius
    }

  @available(iOS 11.0, *)
  func setCustomSpacingInStackSuperview(_ spacing: CGFloat, animated: Bool = false) {
    guard let stack = self.superview as? UIStackView else { return }
    
    UIView.animate(withDuration: animated ? 0.3 : 0.0) {
      stack.setCustomSpacing(spacing, after: self)
    }
  }
    
}
