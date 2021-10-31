import Foundation

let decimalInteger: Int = 28
let binaryInteger: Int = 0b11100
let octalInteger: Int = 0o34
let hexaInteger: Int = 0x1C

print(decimalInteger, binaryInteger, octalInteger, hexaInteger)
print(String(format: "%d", decimalInteger), String(format: "%x", binaryInteger), String(format: "%o", octalInteger), String(format: "%x", hexaInteger))
print(String(format: "%D", decimalInteger), String(format: "%X", binaryInteger), String(format: "%O", octalInteger), String(format: "%X", hexaInteger))
print(String(decimalInteger, radix: 2), String(decimalInteger, radix: 16))

print(Int("A", radix: 16) ?? 0, Int("B", radix: 16) ?? 0, Int("AB", radix: 16) ?? 0)
print(String(171, radix: 2), String(171, radix: 10), String(171, radix: 16))
