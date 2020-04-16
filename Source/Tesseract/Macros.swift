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

public var ORIENTATION_IS_PORTRAIT: Bool { get { return UIApplication.shared.statusBarOrientation.isPortrait } }
public var ORIENTATION_IS_LANDSCAPE: Bool { get { return UIApplication.shared.statusBarOrientation.isLandscape } }

//  MARK:   Device

public var DEVICE_IS_IPAD: Bool { get { return UI_USER_INTERFACE_IDIOM() == .pad } }
public var DEVICE_IS_IPHONE: Bool { get { return UI_USER_INTERFACE_IDIOM() == .phone } }


//  MARK:   Device Height

/**
 *  1st Generation Display Height
 *
 *  3.5"  -  iPhones (4S, older), iPod Touch Gen (4, older)
 */
public let GENERATION_1_IPHONE_HEIGHT: CGFloat = 480.0

/**
 *  2nd Generation Display Height
 *
 *  4"    -  iPhones (5, 5s, 5c, SE), iPod Touch Gen (5, 6, 7)
 */
public let GENERATION_2_IPHONE_HEIGHT: CGFloat = 568.0

/**
 *  3rd Generation Display Height
 *
 *  4.7"  -  iPhones (6, 6s, 7, 8, SE2)
 */
public let GENERATION_3_IPHONE_HEIGHT: CGFloat = 667.0

/**
 *  3rd Generation Plus Display Height
 *
 *  5.5"  -  Plus iPhones (6, 6s, 7, 8)
 */
public let GENERATION_3_PLUS_IPHONE_HEIGHT: CGFloat = 736.0

/**
 *  4th Generation Display Height
 *
 *  5.8"  -  iPhones (X, Xs, 11 Pro)
 */
public let GENERATION_4_IPHONE_HEIGHT: CGFloat = 812.0

/**
 *  4th Generation Low-end Display Height
 *
 *  6.1"  -  iPhones (Xr, 11)
 */
public let GENERATION_4_LOWEND_IPHONE_HEIGHT: CGFloat = 896.0

/**
 *  4th Generation Max Display Height
 *
 *  6.5"  -  Max iPhones (Xs, 11 Pro)
 */
public let GENERATION_4_MAX_IPHONE_HEIGHT: CGFloat = 896.0



/**
 *  Returns `true` if current device belongs to `1ST GENERATION IPHONE DISPLAY`
 *
 *  3.5"  -  iPhones (4S, older)
 */
public var DEVICE_IS_GENERATION_1_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_1_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `2ND GENERATION IPHONE DISPLAY`
 *
 *  4"    -  iPhones (5, 5s, 5c, SE)
 */
public var DEVICE_IS_GENERATION_2_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_2_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `3RD GENERATION IPHONE DISPLAY`
 *
 *  4.7"  -  iPhones (6, 6s, 7, 8, SE2)
 */
public var DEVICE_IS_GENERATION_3_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_3_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `3RD GENERATION PLUS IPHONE DISPLAY`
 *
 *  5.5"  -  Plus iPhones (6, 6s, 7, 8)
 */
public var DEVICE_IS_GENERATION_3_PLUS_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_3_PLUS_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `4TH GENERATION IPHONE DISPLAY`
 *
 *  5.8"  -  iPhones (X, Xs, 11 Pro)
 */
public var DEVICE_IS_GENERATION_4_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT  == GENERATION_4_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `4TH GENERATION LOW-END IPHONE DISPLAY`
 *
 *  6.1"  -  iPhones (Xr, 11)
 */
public var DEVICE_IS_GENERATION_4_LOWEND_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_4_LOWEND_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `4TH GENERATION MAX IPHONE DISPLAY`
 *
 *  6.5"  -  Max iPhones (Xs, 11 Pro)
 */
public var DEVICE_IS_GENERATION_4_MAX_IPHONE : Bool { get { return DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_4_MAX_IPHONE_HEIGHT } }


/**
 *  Returns `true` if current device belongs to `1ST GENERATION IPOD TOUCH DISPLAY`
 *
 *  3.5"  -  iPod Touch Gen (4, older)
 */
public var DEVICE_IS_GENERATION_1_IPOD_TOUCH : Bool { get { return !DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_1_IPHONE_HEIGHT } }

/**
 *  Returns `true` if current device belongs to `2ND GENERATION IPOD TOUCH DISPLAY`
 *
 *  4"    -  iPod Touch Gen (5, 6, 7)
 */
public var DEVICE_IS_GENERATION_2_IPOD_TOUCH : Bool { get { return !DEVICE_IS_IPHONE && DEVICE_HEIGHT == GENERATION_2_IPHONE_HEIGHT } }


//  MARK:   Screen

/**
 *  Returns the value of `UIScreen.main.bounds.size.height`
 */
public let DEVICE_HEIGHT: CGFloat = UIScreen.main.bounds.size.height

/**
 *  Returns `true` if current device has Screen Scale Factor of `1`
 *
 *  **Devices**:
 *  - iPods 3 and older
 *  - iPhones 3Gs and older
 */
public var DEVICE_IS_NON_RETINA : Bool { get { return UIScreen.main.scale == 1 } }

/**
 *  Returns `true` if current device has Screen Scale Factor of `2`
 *
 *  **Devices**:
 *  - iPods 4, 5, 6 and 7
 *  - iPhones 4, 4s
 *  - iPhones 5, 5s, 5c and SE
 *  - iPhones 6, 6s, 7, 8 and SE2
 *  - Plus iPhones 6, 6s, 7 and 8
 *  - iPhones Xr and 11
 */
public var DEVICE_IS_RETINA_HD : Bool { get { return UIScreen.main.scale == 2 } }

/**
 *  Returns `true` if current device has Screen Scale Factor of `2`
 *
 *  **Devices**:
 *  - iPhones X, Xs and 11 pro
 *  - Max iPhones Xs and 11 Pro
 */
public var DEVICE_IS_SUPER_RETINA_HD : Bool { get { return UIScreen.main.scale == 3 } }

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

