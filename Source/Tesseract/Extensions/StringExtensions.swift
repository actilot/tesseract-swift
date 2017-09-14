//
//  StringExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension String {
    
    public static func ordinalString(forNumber i: Int) -> String {
        var suffix = "th"
        let ones = i % 10
        
        if ones == 1 {
            suffix = "st"
        } else if ones == 2 {
            suffix = "nd"
        } else if ones == 3 {
            suffix = "rd"
        }
        
        return "\(i)\(suffix)"
    }
    
    public var isEmail: Bool {
        if self == "" {
            return false
        } else if self == " " {
            return false
        }
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    public func snakeCasedToCamelCased() -> String {
        var camelCase = ""
        let items  = self.components(separatedBy: "_")
        for i in 0...(items.count - 1) {
            var  string = items[i]
            if i == 0 {
                string = string.lowercased()
            } else {
                string = string.capitalized
            }
            camelCase += string
        }
        
        return camelCase
    }
    
    public func json(_ options: Int = 0) -> Any? {
        do {
            let data = self.data(using: .utf8)
            let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions(rawValue:UInt(options)))
            return json
        } catch let error {
            print(error)
            return nil
        }
    }
    
    public func trimmedString() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    public func urlDecodingString() -> String {
        let string = replacingOccurrences(of: "+", with: " ")
        
        return string.removingPercentEncoding!
    }
}
