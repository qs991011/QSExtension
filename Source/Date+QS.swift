//
//  QSDate.swift
//  swiftjson
//
//  Created by qiansheng on 2017/9/15.
//  Copyright © 2017年 qiansheng. All rights reserved.
//

import Foundation
public extension Date {
    
   var monthlastDay : Int {
        get {
            let month = self.month
            switch month {
            case 1,3,5,7,8,10,12:
                return 31
            case 4,6,9,11:
                return 30
            case 2:
                if self.isLeapYear {
                    return 29
                } else {
                    return 28
                }
            default:
                return 30
            }
        }
    }
    
    
    var year : Int {
        get {
            return Calendar.current.component(.year, from: self)
        }
    }
    
    var month : Int {
        get {
            return Calendar.current.component(.month, from: self)
        }
    }
    
    var day : Int {
        get {
            return Calendar.current.component(.day, from: self)
        }
    }
    
    var hour : Int {
        get {
            return Calendar.current.component(.hour, from: self)
        }
    }
    
    var minute : Int {
        get {
            return Calendar.current.component(.minute, from: self)
        }
    }
    
    var second : Int {
        get {
            return Calendar.current.component(.second, from: self)
        }
    }
    
    var nanosecond : Int {
        get {
            return Calendar.current.component(.nanosecond, from: self)
        }
    }
    
    var weekday  : Int {
        get {
            return Calendar.current.component(.weekday, from: self)
        }
    }
    
    var weekdayOridinal : Int {
        get {
            return Calendar.current.component(.weekdayOrdinal, from: self)
        }
    }
    var weekofMonth : Int {
        get {
            return Calendar.current.component(.weekOfMonth, from: self)
        }
    }
    
    var weekofYear : Int {
        get {
            return Calendar.current.component(.weekOfYear, from: self)
        }
    }
    
    var yearForWeekOfYear : Int {
        get {
            return Calendar.current.component(.yearForWeekOfYear, from: self)
        }
    }
    
    var quarter : Int {
        get {
            return Calendar.current.component(.quarter, from: self)
        }
    }
    
    var isLeapMonth : Bool? {
        get {
            return DateComponents.init().isLeapMonth
        }
    }
    
    var isLeapYear : Bool {
        get {
            let year = self.year
            return (year % 400 == 0) || ((year % 100 != 0) && (year % 4 == 0))
        }
    }
    
    var isToday  : Bool{
        if (fabs(self.timeIntervalSinceNow) >= 60 * 60 * 24)  {
            return false
        }
        
        return Date().day == self.day
    }
    
    var isYesterDay  : Bool{
        if (fabs(self.timeIntervalSinceNow) >= 60 * 60 * 24)  {
            return false
        }
        
        return Date().day == self.day
    }
    
    func dateByAdding(years: Int) -> Date? {
        let caleder = Calendar.current
        return  caleder.date(byAdding: .year, value: years, to: self)
    }
    
    func dateByAdding(months:Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding: .month, value: months, to: self)
        
    }
    
    func dateByAdding(weeks:Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding: .weekOfYear, value: weeks, to: self)
    }
    
    func dateByAdding(days:Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding:.day , value: days, to: self)
    }
    
    func dateByAdding(hours: Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding: .hour, value: hours, to: self)
    }
    
    func dateByAdding(minutes: Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding: .minute, value: minutes, to: self)
    }
    
    func dateByAdding(seconds:Int) -> Date? {
        let caleder = Calendar.current
        return caleder.date(byAdding: .second, value: seconds, to: self)
    }
    
    func stringWithFormat(format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = Locale.current
        return formatter.string(from: self)
    }
    
    func stringwithFormat(format:String,timeZone:TimeZone,locale:Locale) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = locale
        formatter.timeZone = timeZone
        return formatter.string(from: self)
    }
    
    func stringWithISOFormat() -> String {
         let formatter = DateFormatter()
         formatter.locale = Locale(identifier: "en_US_POSIX")
         formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
         return formatter.string(from: self)
    }
    
   static  func dateWithString(dateString:String,format:String) ->Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.date(from: dateString)
    }
    
   static  func dateWithString(dateString: String,format:String,timeZone:TimeZone,locale:Locale) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.timeZone = timeZone
        formatter.locale = locale
        return formatter.date(from: dateString)
    }
    
}
