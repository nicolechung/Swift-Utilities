import UIKit



extension NSDate {

    
    var day:Int {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.Day, fromDate: self)
        return components.day
    }
    
    var weekday:Int {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.Weekday, fromDate: self)
        return components.weekday
    }
    
    var weekdayName:String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.stringFromDate(self)
    }
    
    var month:Int {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.Month, fromDate: self)
        return components.month
    }
    
    var monthName:String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = "MMM"
        return formatter.stringFromDate(self)
    }
    
    var year:Int {
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components(NSCalendarUnit.Year, fromDate: self)
        return components.year
    }
    
    /*
    * Checks to see if it's the same date, not the same date + time 
    * Useful for comparing the same dates that are off by a few hours, minutes or seconds
    */
    func isSameDateAs(anotherDate:NSDate) -> Bool {
        return self.day == anotherDate.day && self.month == anotherDate.month && self.year == anotherDate.year
    
    }
    
    func addDays(numberOfDays:Double)->Double {
        let daysInTimeInterval = numberOfDays * 24 * 60 * 60
        return daysInTimeInterval
    }
    
}



let currentDate = NSDate()

currentDate.day
currentDate.weekday
currentDate.weekdayName
currentDate.month
currentDate.monthName
let dateInFuture = currentDate.addDays(10)
let futureDate = NSDate(timeInterval: dateInFuture, sinceDate: currentDate)

currentDate.isSameDateAs(futureDate)