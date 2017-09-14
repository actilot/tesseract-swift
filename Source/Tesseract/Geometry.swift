//
//  Geometry.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

/**
 This is a Swift version of Benihime, https://github.com/shiki/ios-benihime/blob/master/Benihime/BCGeometry.h
 */

import Foundation

public func CGRectSetWidth(_ width: CGFloat, toRect rect: CGRect) -> CGRect {
    return CGRect(x: rect.origin.x, y: rect.origin.y, width: width, height: rect.size.height)
}

public func CGRectSetHeight(_ height: CGFloat, toRect rect: CGRect) -> CGRect {
    return CGRect(x: rect.origin.x, y: rect.origin.y, width: rect.size.width, height: height)
}

public func CGRectSetSize(_ size: CGSize, toRect rect: CGRect) -> CGRect {
    return CGRect(x: rect.origin.x, y: rect.origin.y, width: size.width, height: size.height)
}

public func CGRectSetX(_ x: CGFloat, toRect rect: CGRect) -> CGRect {
    return CGRect(x: x, y: rect.origin.y, width: rect.size.width, height: rect.size.height)
}

public func CGRectSetY(_ y: CGFloat, toRect rect: CGRect) -> CGRect {
    return CGRect(x: rect.origin.x, y: y, width: rect.size.width, height: rect.size.height)
}

public func CGRectSetOrigin(_ origin: CGPoint, toRect rect: CGRect) -> CGRect {
    return CGRect(x: origin.x, y: origin.y, width: rect.size.width, height: rect.size.height)
}

public func CGRectSetOriginToCenter(containerRect container: CGRect, rect: CGRect) -> CGRect {
    let center = CGPoint(x: container.midX, y: container.midY)
    return CGRect(x: center.x - rect.size.width * 0.5, y: center.y - rect.size.height * 0.5,
                  width: rect.size.width, height: rect.size.height)
}

public func CGRectAdd(x: CGFloat = 0, y: CGFloat = 0, width: CGFloat = 0, height: CGFloat = 0, toRect rect: CGRect) -> CGRect {
    return CGRect(x: rect.origin.x + x, y: rect.origin.y + y, width: rect.size.width + width, height: rect.size.height + height)
}

public func CGRectExpand(x: CGFloat, y: CGFloat, rect: CGRect) -> CGRect {
    let origin = rect.origin
    let size = rect.size
    return CGRect(x: origin.x - x / 2, y: origin.y - y / 2, width: size.width + x, height: size.height + y)
}

public func CGDegreesToRadians(_ degrees: CGFloat) -> CGFloat {
    return degrees * CGFloat.pi / 180
}

public func CGRadiansToDegrees(_ radians: CGFloat) -> CGFloat {
    return radians * 180 / CGFloat.pi
}

public func CGNormalizedDegrees(_ degrees: CGFloat) -> CGFloat {
    var degrees = fmodf(Float(degrees), 360.0)
    if degrees < 0 {
        degrees += 360.0
    }
    
    return CGFloat(degrees)
}
