import Foundation

let d: Int = 28
let b: Int = 0b11100
let o: Int = 0o34
let h: Int = 0x1C

print(d, b, o, h)
print(String(format: "%d", d), String(format: "%x", b), String(format: "%o", o), String(format: "%x", h))
print(String(format: "%D", d), String(format: "%X", b), String(format: "%O", o), String(format: "%X", h))
print(String(d, radix: 2), String(d, radix: 16))

print(Int("A", radix: 16) ?? 0, Int("B", radix: 16) ?? 0, Int("AB", radix: 16) ?? 0)
print(String(171, radix: 2), String(171, radix: 10), String(171, radix: 16))
