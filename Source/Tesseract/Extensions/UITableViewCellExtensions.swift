//
//  UITableViewCellExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension UITableViewCell {
    
    public func tableView() -> UITableView? {
        var view = self.superview
        
        while ((view != nil && view is UITableView) == false) {
            view = view?.superview
        }
        
        return view as? UITableView
    }
    
}
