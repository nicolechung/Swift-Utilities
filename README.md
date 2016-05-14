# Swift-Utilities
Little extensions and stuff to make using Swift simpler

## NSDate 
Include `NSDate+helpers.swift` in your project.

```Swift
let currentDate = NSDate() // create a date that is today's date

// returns the day number of the month
currentDate.day 

// returns the day of the week as an Int
currentDate.weekday 

// returns the day of the week as the full day name
currentDate.weekdayName 

// returns the month
currentDate.month 

// returns the full name of the month
currentDate.monthName

// add days to the current date
let dateInFuture = currentDate.addDays(10)

// compares two dates without paying attention to hours, minutes and seconds

currentDate.isSameDateAs(dateInFuture)
```