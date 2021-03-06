//
//  Date+LocalCalendar.swift
//  ACExtensions
//
//  Created by AppCraft LLC on 8/23/21.
//

import Foundation

public extension Date {
    
    func toLocalDateTimeString() -> String {
        let date = self
        
        let calendar = NSCalendar.current
        
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        
        // Return Example: 01.01.1999 08:30:00
        return "\(String(format: "%02d", day)).\(String(format: "%02d", month)).\(year) \(String(format: "%02d", hour)):\(String(format: "%02d", minute))"
    }
    
    func toLocalDateTimeWordsString() -> String {
        let date = self
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM HH:mm"
        dateFormatter.locale = Locale.current
        
        // Return Example: 01 января 08:30
        return dateFormatter.string(from: date)
    }
    
    func toLocalDateString() -> String {
        let date = self
        let calendar = NSCalendar.current
        
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let year = calendar.component(.year, from: date)
        
        // Return Example: 01.01.1999
        return "\(String(format: "%02d", day)).\(String(format: "%02d", month)).\(year)"
    }
    
    func toLocalWeekDayString() -> String {
        let date = self
        let calendar = NSCalendar.current
        
        let weekDay = calendar.component(.weekday, from: date)
        
        let formatter = DateFormatter()
        // Return Example: ПН
        return formatter.weekdaySymbols[weekDay - 1]
    }
    
    func toLocalWeekDayIndex() -> Int {
        let date = self
        let calendar = NSCalendar.current
        
        let weekDay = calendar.component(.weekday, from: date)
        
        return weekDay - 1
    }
    
    func toLocalTimeString() -> String {
        let date = self
        let calendar = NSCalendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        // Return Example: 08:30:00
        return "\(String(format: "%02d", hour)):\(String(format: "%02d", minute)):\(String(format: "%02d", second))"
    }
    
    func toLocalTimeShortString() -> String {
        let date = self
        let calendar = NSCalendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        
        // Return Example: 08:30
        return "\(String(format: "%02d", hour)):\(String(format: "%02d", minute))"
    }
    
}
