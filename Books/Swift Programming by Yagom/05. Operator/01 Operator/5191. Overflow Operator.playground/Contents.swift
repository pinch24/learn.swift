var unsignedInteger: UInt8 = 0
//let errorUnderflowResult: UInt8 = unsignedInteger - 1	// Run-time Error
let underflowedValue: UInt8 = unsignedInteger &- 1
print(unsignedInteger, underflowedValue)
print()

unsignedInteger = UInt8.max
//let errorOverflowResult: UInt8 = unsignedInteger + 1	// Run-time Error
let overflowedValue: UInt8 = unsignedInteger &+ 1
print(unsignedInteger, overflowedValue)
print()

print(unsignedInteger, unsignedInteger &* 2)
print(unsignedInteger, unsignedInteger &* 3)
print(unsignedInteger, unsignedInteger &* 4)
print(unsignedInteger, unsignedInteger &* 5)
print(unsignedInteger, unsignedInteger &* 6)
print(unsignedInteger, unsignedInteger &* 7)
print(unsignedInteger, unsignedInteger &* 8)
print()

print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 1, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 2, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 3, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 4, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 5, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 6, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 7, radix: 2))
print(String(unsignedInteger, radix: 2), String(unsignedInteger &* 8, radix: 2))
print()

/**
 * ### 5.1.9 오버플로 연산자
 * 오버플로 연산자를 사용하면 오버플로를 자동으로 처리한다.
 * &+, &-, &*
 */
