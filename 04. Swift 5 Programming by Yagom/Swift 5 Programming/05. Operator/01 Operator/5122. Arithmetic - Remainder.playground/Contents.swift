import Foundation

let a = 4
let b = 3
print("\(a) % \(b) = \(a % b)")

let n = 5.0
let r = n.truncatingRemainder(dividingBy: 1.5)
print(r)

/**
 * ### 5.1.2 산술(arithmatic) 연산자
 * 나머지 연산자(%)는 정수 타입의 데이터만 처리한다.
 * 부동소수점 타입의 나머지 연산을 위해 truncatingRemainder()를 제공한다.
 */
