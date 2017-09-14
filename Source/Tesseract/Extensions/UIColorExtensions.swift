//
//  UIColorExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UIColor {
    
    public func hexString() -> String! {
        let coreImageColor = CIColor(color: self)
        
        return String(format: "#%02lX%02lX%02lX", lroundf(Float(coreImageColor.red * 255)),
                      lroundf(Float(coreImageColor.green * 255)),
                      lroundf(Float(coreImageColor.blue * 255)))
    }
    
    public static func colorWithHexString(_ hexString: String, alpha:CGFloat? = 1.0) -> UIColor {
        // Convert hex string to an integer
        let hexint = Int(UIColor.intFromHexString(hexString))
        let red = CGFloat((hexint & 0xff0000) >> 16) / 255.0
        let green = CGFloat((hexint & 0xff00) >> 8) / 255.0
        let blue = CGFloat((hexint & 0xff) >> 0) / 255.0
        let alpha = alpha!
        
        // Create color object, specifying alpha as well
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        return color
    }
    
    public static func intFromHexString(_ hexStr: String) -> UInt32 {
        var hexInt: UInt32 = 0
        // Create scanner
        let scanner: Scanner = Scanner(string: hexStr)
        // Tell scanner to skip the # characterr
        scanner.charactersToBeSkipped = CharacterSet(charactersIn: "#")
        // Scan hex value
        scanner.scanHexInt32(&hexInt)
        return hexInt
    }
    
    public static func textColor(forBackgroundColor color: UIColor) -> UIColor {
        let count: size_t = color.cgColor.numberOfComponents
        let componentColors: [CGFloat] = color.cgColor.components!
        var darknessScore: CGFloat = 0
        if count == 2 {
            darknessScore = (((componentColors[0] * 255) * 299) + ((componentColors[0] * 255) * 587) + ((componentColors[0] * 255) * 114)) / 1000
        }
        else if count == 4 {
            darknessScore = (((componentColors[0] * 255) * 299) + ((componentColors[1] * 255) * 587) + ((componentColors[2] * 255) * 114)) / 1000
        }
        
        if darknessScore >= 125 {
            return UIColor.black
        }
        return UIColor.white
    }
}
