//: DateInterval - API_AVAILABLE(macosx(10.12), ios(10.0), watchos(3.0), tvos(10.0))

import Foundation


//: Reference date that will be used for playing purposes. It'll be the current date plus three minutes.
let fromDate = Date(timeIntervalSinceNow: 180)

//: Initializer 1 - An initializer that will initalize the struct with the current date and a zero duration.
let intervalSinceNow = DateInterval()


//: Initializer 2 - A DateInterval can be initialized with a start and end Date.
let afterAnHour = DateInterval(start: fromDate, end: fromDate + 3600)

//: Initializer 3 - An initializer that will initalize the struct with the date and the specified duration.
let afterThreeMins = DateInterval(start: fromDate, duration: 180)

//: afterFiveMins - DateInterval which will starts after a minute from the reference date and ends after five mins.
let afterFiveMins = DateInterval(start: fromDate + 60, duration: 240)

//: Is contained? - We can evaluate wheter a DateInterval is contained in another.
let contained = afterThreeMins.contains(Date(timeInterval: 15, since: fromDate))

//: intersects? - We can evaluate wheter a DateInterval intersects with another.
let intersects = afterThreeMins.intersects(afterFiveMins)

//: intersection - We can get an intersection DateInterval from another given by parameter. Be aware this object may return nil if those don't intersect each other. Therefore it returns an optional(DateInterval). Unwrapped for demo purposes, don't kill me. :)
let intersection = afterThreeMins.intersection(with: afterFiveMins)!

let unsorted = [afterFiveMins, afterThreeMins, intervalSinceNow, afterAnHour, intersection]

//: Sorting - A helpful DataInterval's capability is sorting them in a collection. Given DateInterval implement Comparable protocol.


let sortedAscending = unsorted.sorted()

let sortedDescending = unsorted.sorted(by: >)
