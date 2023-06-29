let a = 4
let b = 2

print(String(a, radix: 2))
print(String(~a, radix: 2))
print()

print(String(a, radix: 2), String(b, radix: 2))
print(String(a & b, radix: 2))
print(String(a | b, radix: 2))
print(String(a ^ b, radix: 2))
print(String(a >> b, radix: 2))
print(String(a << b, radix: 2))
print()

print(String(1 << 16, radix: 2))
print(String(1 << 32, radix: 2))
print(String(1 << 64, radix: 2))
print(String(1 << 63, radix: 2))
print()

/**
 * ### 5.1.7 비트 연산자
 * 값의 비트 논리 연산을 위한 연산자이다.
 */
