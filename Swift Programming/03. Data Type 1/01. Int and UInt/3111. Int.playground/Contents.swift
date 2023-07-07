var i: Int = -100
var u: UInt = 100
print("\(i), \(u)")
print("\(Int.min), \(Int.max)")
print("\(UInt.min), \(UInt.max)")

i = Int.max
u = UInt.max
print("\(i), \(u)")

#if ERROR
i += 1				// Error: Overflow
u += 1				// Error: Overflow
print("\(i), \(u)")
#endif

#if ERROR
i = Int(u)			// Fatal Error
#endif
u = UInt(i)
print("\(i), \(u)")

/**
 * ## 3.1 Int와 UInt
 * Int는 +, -  부호를 포함한 정수, UInt는 - 부호를 포함하지 않는 0을 포함한 정수를 저장한다.
 * Int와 UInt 타입의 최댓값과 최솟값은 각각 max와 min 프로퍼티로 알아볼 수 있다.
 * 시스템 아키텍처에 따라 Int와 UInt의 타입이 달라진다. (32 Bit: Int32/UInt32, 64 Bit: Int64/UInt64)
 */
