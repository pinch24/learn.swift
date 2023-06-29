import Foundation

let decimal: Int = 28
let binary: Int = 0b11100
let octal: Int = 0o34
let hex: Int = 0x1C

print(decimal, binary, octal, hex)
print()

print(String(format: "%d", decimal), String(format: "%x", binary), String(format: "%o", octal), String(format: "%x", hex))
print(String(format: "%D", decimal), String(format: "%X", binary), String(format: "%O", octal), String(format: "%X", hex))
print()

print(String(decimal, radix: 2), String(decimal, radix: 16))
print()

print(String(171, radix: 2), String(171, radix: 10), String(171, radix: 16))
print()

print(Int("A", radix: 16) ?? 0, Int("B", radix: 16) ?? 0, Int("AB", radix: 16) ?? 0)
print()


/**
 * Number Formatter
 *  - %d, %D: 10진수
 *  - %x, %X: 16진수
 *  - %o, %O: 8진수
 *
 * String(value: radix:) - 숫자를 기수(radix)로 문자열로 변환
 * Int(text: radix:) - 문자를 기수(radix)의 숫자로 변환
 */
