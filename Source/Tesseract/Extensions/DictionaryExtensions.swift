//
//  DictionaryExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension Dictionary {
    
    public func jsonString(_ options: Int = 0) -> String? {
        do {
            let data = try JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions(rawValue: UInt(options)))
            let ret = String(data: data, encoding: .utf8)
            return ret
        } catch let error {
            print(error)
        }
        
        return nil
    }
}
