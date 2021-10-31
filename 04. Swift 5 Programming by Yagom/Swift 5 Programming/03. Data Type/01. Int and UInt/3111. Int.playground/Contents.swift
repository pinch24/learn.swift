import Foundation

var integer: Int = -100
var unsignedInteger: UInt = 100
print("\(integer), \(unsignedInteger)")
print("\(Int.min), \(Int.max)")
print("\(UInt.min), \(UInt.max)")

integer = Int.max
unsignedInteger = UInt.max
print("\(integer), \(unsignedInteger)")

//integer += 1                        // Error: Overflow
//unsignedInteger += 1                // Error: Overflow
//print("\(integer), \(unsignedInteger)")

//integer = Int(unsignedInteger)        // Fatal Error
unsignedInteger = UInt(integer)
print("\(integer), \(unsignedInteger)")
