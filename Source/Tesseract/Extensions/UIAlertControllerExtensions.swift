//
//  UIAlertControllerExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UIAlertController {
    
    public static func presentErrorAlert(_ error: String, okHandler: (() -> ())?) {
        let ac = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction) in
            okHandler?()
        })
        ac.addAction(okButton)
        UIViewController.topMostViewController()?.present(ac, animated: true, completion: nil)
    }
    
    public static func presentMessageConfirmAlert(_ title: String, message: String?, confirmHandler: (() -> ())?) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let yesButton = UIAlertAction(title: "Yes", style: .default, handler: { (UIAlertAction) in
            confirmHandler?()
        })
        let cancelButton = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        ac.addAction(cancelButton)
        ac.addAction(yesButton)
        UIViewController.topMostViewController()?.present(ac, animated: true, completion: nil)
    }
}
