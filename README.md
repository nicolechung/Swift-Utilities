# Swift-Utilities
Little extensions and stuff to make using Swift simpler

## NSDate 
Include `NSDate+helpers.swift` in your project.

```Swift
let currentDate = NSDate()

currentDate.day
currentDate.weekday
currentDate.weekdayName
currentDate.month
currentDate.monthName
let dateInFuture = currentDate.addDays(10)
currentDate.isSameDateAs(dateInFuture)
```