import Foundation

var infinity = Float.infinity
var nan = Float.nan

print("Bit Pattern: \(String(infinity.bitPattern, radix: 2))")
print("Significand: \(String(infinity.bitPattern, radix: 2).prefix(1))")
print("Exponent:     \(String(infinity.bitPattern, radix: 2).prefix(9).suffix(8))")
print("Fraction:             \(String(infinity.bitPattern, radix: 2).suffix(23))")
print()

print("Bit Pattern: \(String(nan.bitPattern, radix: 2))")
print("Significand: \(String(nan.bitPattern, radix: 2).prefix(1))")
print("Exponent:     \(String(nan.bitPattern, radix: 2).prefix(9).suffix(8))")
print("Fraction:             \(String(nan.bitPattern, radix: 2).suffix(23))")
print()
