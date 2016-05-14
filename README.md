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

## String

Include `String+helpers.swift` in your project.

### split

```Swift
let example = "Find the day of the week"
example.split(" ") // ["Find", "the", "day", "of", "week"]
````

### startsWith

```Swift
let example = "Find the day of the week"
example.startsWith("Find") // true
```

### endsWith

```Swift
let example = "Find the day of the week"
example.startsWith("week") // true
```

### replace

```Swift
let example = "Find the day of the week"
example.replace("day", with: "Monday") // "Find the Monday of the week"
```

### padStart / leftPad

Pads the start (left side) of a string with an optional "with" parameter.

```Swift
let example = "Find the day of the week"
example.padStart(28, with: "abcde" ) // "abcdeabcFind the day of week"
```