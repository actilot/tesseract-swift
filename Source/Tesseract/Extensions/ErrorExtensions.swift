//
//  ErrorExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension Error {
    
    public static func error(withLocalizedDescription desc: String, domain: String = NSCocoaErrorDomain,
                             code: Int = 0, userInfo: Dictionary<String, Any>? = nil) -> Error {
        let userInfoMutable = NSMutableDictionary()
        if userInfo != nil {
            userInfoMutable.addEntries(from: userInfo!)
        }
        userInfoMutable.setObject(desc, forKey: NSLocalizedDescriptionKey as NSCopying)
        
        let ret = NSError(domain: domain, code: code, userInfo: userInfo)
        
        return ret as Error
    }
}
