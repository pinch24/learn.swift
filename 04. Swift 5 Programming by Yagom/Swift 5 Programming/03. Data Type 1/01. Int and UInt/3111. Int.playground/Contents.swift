import Foundation

var i: Int = -100
var u: UInt = 100
print("\(i), \(u)")
print("\(Int.min), \(Int.max)")
print("\(UInt.min), \(UInt.max)")

i = Int.max
u = UInt.max
print("\(i), \(u)")

//i += 1                        // Error: Overflow
//u += 1                // Error: Overflow
//print("\(i), \(u)")

//i = Int(u)        // Fatal Error
u = UInt(i)
print("\(i), \(u)")
