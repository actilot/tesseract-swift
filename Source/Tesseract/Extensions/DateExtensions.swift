//
//  DateExtensions.swift
//  Tesseract
//
//  Created by Axel Ros Campaña on 9/14/17.
//  Copyright © 2017 Axel Ros Campaña. All rights reserved.
//

import Foundation

public extension Date {
    
    public static func dateFromString(_ string: String, format: String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.date(from: string)!
    }
    
    public func stringWithFormat(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        
        return formatter.string(from: self)
    }
    
    public func hour() -> Int {
        return Calendar.current.component(.hour, from: self)
    }
    
    public func month() -> Int {
        return Calendar.current.component(.month, from: self)
    }
    
    public func year() -> Int {
        return Calendar.current.component(.year, from: self)
    }
    
    public func isEqualToDay(_ date: Date) -> Bool {
        let calendar = Calendar.current
        let selfComponents = calendar.dateComponents([.day, .month, .year], from: self)
        let compareComponents = calendar.dateComponents([.day, .month, .year], from: date)
        
        return selfComponents.year == compareComponents.year
        && selfComponents.month == compareComponents.month
        && selfComponents.day == compareComponents.day
    }
    
    public func dateWithZeroSeconds() -> Date {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.era, .year, .month, .day, .hour, .minute], from: self)
        return calendar.date(from: components)!
    }
    
    
    ///////////////////////////////////////////////////////////////////////////////////
    
    public func years(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    
    public func months(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    
    public func weeks(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfYear], from: date, to: self).weekOfYear ?? 0
    }
    
    public func days(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    
    public func hours(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    
    public func minutes(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    
    public func seconds(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    
    public func relativeTime() -> String {
        let now = Date()
        if now.years(from: self)   > 0 {
            return now.years(from: self).description  + " year"  + { return now.years(from: self)   > 1 ? "s" : "" }() + " ago"
        }  else if now.months(from: self)  > 0 {
            return now.months(from: self).description + " month" + { return now.months(from: self)  > 1 ? "s" : "" }() + " ago"
        } else if now.weeks(from:self)   > 0 {
            return now.weeks(from: self).description  + " week"  + { return now.weeks(from: self)   > 1 ? "s" : "" }() + " ago"
        } else if now.days(from: self)    > 0 {
            if now.days(from:self) == 1 { return "Yesterday" }
            return now.days(from: self).description + " days ago"
        } else if now.hours(from: self)   > 0 {
            return "\(now.hours(from: self)) hour"     + { return now.hours(from: self)   > 1 ? "s" : "" }() + " ago"
        } else if now.minutes(from: self) > 0 {
            return "\(now.minutes(from: self)) minute" + { return now.minutes(from: self) > 1 ? "s" : "" }() + " ago"
        } else if now.seconds(from: self) >= 0 {
            if now.seconds(from: self) < 15 {
                return "Just now"
            }
            return "\(now.seconds(from: self)) second" + { return now.seconds(from: self) > 1 ? "s" : "" }() + " ago"
        }
        return ""
    }
}
