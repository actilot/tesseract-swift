//
//  Macros.swift
//  Tesseract
//
//  Created by Axel  Campaña on 11/22/16.
//  Copyright © 2016 Axel Campaña. All rights reserved.
//

/**
    This is a Swift version of Benihime, https://github.com/shiki/ios-benihime/blob/master/Benihime/BMacros.h
 */

import UIKit

//  MARK:   Orientation
public var UIOrientationIsPortrait: Bool { get { return UIInterfaceOrientationIsPortrait(UIApplication.shared.statusBarOrientation) } }
public var UIOrientationIsLandscape: Bool { get { return UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation) } }

//  MARK:   Device
public var DeviceIsIPad: Bool { get { return UI_USER_INTERFACE_IDIOM() == .pad } }
public var DeviceIsIPhone: Bool { get { return UI_USER_INTERFACE_IDIOM() == .phone } }

/**
 ***  DEVICES  ***
 *
 * SHORT  : iPhones (4S, older), iPods (4, older)
 * 4-INCH : iPhones (5, 5S, 5C, SE), iPods (5, 6)
 * TALL   : iPhones (6, 6S, 7, 8)
 * PLUS   : Plus iPhones (6, 6S, 7, 8)
 * X      : iPhone X
 */

//  MARK:   Device Height
public var ShortIPhoneHeight: Float { get { return 480.0 } }
public var FourInchIPhoneHeight: Float { get { return 568.0 } }
public var TallIPhoneHeight: Float { get { return 667.0 } }
public var PlusIPhoneHeight: Float { get { return 736.0 } }
public var XiPhoneHeight: Float { get { return 812.0 } }

public var DeviceIsShortIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == ShortIPhoneHeight } }
public var DeviceIsFourInchIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == FourInchIPhoneHeight } }
public var DeviceIsTallIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == TallIPhoneHeight } }
public var DeviceIsPlusIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == PlusIPhoneHeight } }
public var DeviceIsXiPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == XiPhoneHeight } }

public var DeviceIsShortIPhoneOrIPod: Bool { get { return Float(UIScreen.main.bounds.size.height) == ShortIPhoneHeight } }
public var DeviceIsFourInchIPhoneOrIPod: Bool { get { return Float(UIScreen.main.bounds.size.height) == FourInchIPhoneHeight } }

//  MARK:   Screen
public var DeviceIsNonRetina : Bool { get { return UIScreen.main.scale < 2 } }
public var DeviceIsRetina : Bool { get { return UIScreen.main.scale == 2 } }
public var DeviceIsRetinaHD : Bool { get { return UIScreen.main.scale == 3 } }

//  MARK:   System Versioning Preprocessor
public func SystemVersionIsEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedSame }
public func SystemVersionIsGreaterThan(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedDescending }
public func SystemVersionIsGreaterThanOrEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedAscending }
public func SystemVersionIsLessThan(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedAscending }
public func SystemVersionIsLessThanOrEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedDescending }

//  MARK:   Null, Nil, Empty String
public func NilIfNull(_ object: Any) -> Any? {
    if (object is NSNull) {
        return nil
    } else {
        return object
    }
}

public func NullIfNil(_ object: Any?) -> Any? {
    if (object == nil) {
        return NSNull()
    } else {
        return object
    }
}

public func EmptyIfNil(_ object: Any?) -> String? {
    if (object == nil) {
        return ""
    } else {
        return object as! String?
    }
}

public func EmptyIfNull(_ object: Any?) -> String? {
    if (object is NSNull) {
        return ""
    } else {
        return object as! String?
    }
}

