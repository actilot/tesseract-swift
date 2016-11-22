//
//  Macros.swift
//  Tesseract
//
//  Created by Axel  Campaña on 11/22/16.
//  Copyright © 2016 Axel Campaña. All rights reserved.
//

/**
    This is a Swift version of Benihime, https://github.com/shiki/ios-benihime/blob/master/Benihime/BMacros.h
    in which I am one of the contributors
 */

import UIKit

//  MARK:   Orientation
var UIOrientationIsPortrait: Bool { get { return UIInterfaceOrientationIsPortrait(UIApplication.shared.statusBarOrientation) } }
var UIOrientationIsLadnscape: Bool { get { return UIInterfaceOrientationIsLandscape(UIApplication.shared.statusBarOrientation) } }

//  MARK:   Device
var DeviceIsIPad: Bool { get { return UI_USER_INTERFACE_IDIOM() == .pad } }
var DeviceIsIPhone: Bool { get { return UI_USER_INTERFACE_IDIOM() == .phone } }

/**
 ***  DEVICES  ***
 *
 * SHORT  : iPhones (4S, older), iPods (4, older)
 * 4-INCH : iPhones (5, 5S, 5C, SE), iPods (5, 6)
 * TALL   : iPhones (6, 6S, 7)
 * PLUS   : Plus iPhones (6, 6S, 7)
 */

//  MARK:   Device Height
var ShortIPhoneHeight: Float { get { return 480.0 } }
var FourInchIPhoneHeight: Float { get { return 568.0 } }
var TallIPhoneHeight: Float { get { return 667.0 } }
var PlusIPhoneHeight: Float { get { return 736.0 } }

var DeviceIsShortIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == ShortIPhoneHeight } }
var DeviceIsFourInchIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == FourInchIPhoneHeight } }
var DeviceIsTallIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == TallIPhoneHeight } }
var DeviceIsPlusIPhone: Bool { get { return DeviceIsIPhone && Float(UIScreen.main.bounds.size.height) == PlusIPhoneHeight } }

var DeviceIsShortIPhoneOrIPod: Bool { get { return Float(UIScreen.main.bounds.size.height) == ShortIPhoneHeight } }
var DeviceIsFourInchIPhoneOrIPod: Bool { get { return Float(UIScreen.main.bounds.size.height) == FourInchIPhoneHeight } }

//  MARK:   Screen
var DeviceIsNonRetina : Bool { get { return UIScreen.main.scale < 2 } }
var DeviceIsRetina : Bool { get { return UIScreen.main.scale == 2 } }
var DeviceIsRetinaHD : Bool { get { return UIScreen.main.scale == 3 } }

//  MARK:   System Versioning Preprocessor
func SystemVersionIsEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedSame }
func SystemVersionIsGreaterThan(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedDescending }
func SystemVersionIsGreaterThanOrEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedAscending }
func SystemVersionIsLessThan(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) == .orderedAscending }
func SystemVersionIsLessThanOrEqualTo(_ version: String) -> Bool { return UIDevice.current.systemVersion.compare(version, options: .numeric) != .orderedDescending }

//  MARK:   Null, Nil, Empty String

func NilIfNull(_ object: Any) -> Any? {
    if (object is NSNull) {
        return nil
    } else {
        return object
    }
}

func NullIfNil(_ object: Any?) -> Any? {
    if (object == nil) {
        return NSNull()
    } else {
        return object
    }
}

func EmptyIfNil(_ object: Any?) -> String? {
    if (object == nil) {
        return ""
    } else {
        return object as! String?
    }
}

func EmptyIfNull(_ object: Any?) -> String? {
    if (object is NSNull) {
        return ""
    } else {
        return object as! String?
    }
}

