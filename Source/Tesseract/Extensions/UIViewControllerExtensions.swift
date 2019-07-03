//
//  UIViewControllerExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UIViewController {
    
    public static func topMostViewController() -> UIViewController? {
        var topMostViewController = UIApplication.shared.keyWindow?.rootViewController
        
        while let vc = topMostViewController?.presentedViewController {
            topMostViewController = vc
        }
        return topMostViewController
    }
    
    func addKeyboardWillShowNotification(_ action: Selector) {
      NotificationCenter.default.addObserver(self, selector: action, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    func addKeyboardWilHideNotification(_ action: Selector) {
        NotificationCenter.default.addObserver(self, selector: action, name: UIResponder.keyboardWillShowNotification, object: nil)
    }
}
