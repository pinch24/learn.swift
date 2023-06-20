import Foundation

let optionalInt: Int? = 4
print(optionalInt as Any)
print(optionalInt!)
print()

let valueInt1: Int = optionalInt != nil ? optionalInt!: 0
print(valueInt1)
print()

let valueInt2: Int = optionalInt ?? 0
print(valueInt2)
print()


/**
 * ### 5.1.10 옵셔널 연산자
 * 스위프트 라이브러리에 정의된 연산자들.
 * - 옵셔널 연산자: V?
 * - nil 병합 연산자: A ?? B
 * - 옵셔널 강제 추출 연산자: O!
 */
