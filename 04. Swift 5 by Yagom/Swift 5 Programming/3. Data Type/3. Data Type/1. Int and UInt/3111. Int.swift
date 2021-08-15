import Foundation

func exec_3111() {
    
	var integer: Int = -100
	var unsignedInteger: UInt = 100
	print("\(integer), \(unsignedInteger)")
	print("\(Int.min), \(Int.max)")
	print("\(UInt.min), \(UInt.max)")
	
	integer = Int.max
	unsignedInteger = UInt.max
	print("\(integer), \(unsignedInteger)")
	
	//integer += 1						// Error: Overflow
	//unsignedInteger += 1				// Error: Overflow
	//print("\(integer), \(unsignedInteger)")
	
	//integer = Int(unsignedInteger)		// Fatal Error
	unsignedInteger = UInt(integer)
	print("\(integer), \(unsignedInteger)")
}

/**
 # 3. 데이터 타입 기본
 데이터 타입은 프로그램 내에서 다뤄지는 데이터의 종류를 뜻한다.
 스위프트의 기본 데이터 타입은 모두 구조체를 기반으로 구현되어 있다.
 스위프트의 데이터 타입 이름은 대문자 카멜케이스를 사용한다.

 ## 3.2 Int와 UInt
 Int는 +, -  부호를 포함한 정수, UInt는 - 부호를 포함하지 않는 0을 포함한 정수를 저장한다.
 Int와 UInt 타입의 최댓값과 최솟값은 각각 max와 min 프로퍼티로 알아볼 수 있다.
 시스템 아키텍처에 따라 Int와 UInt의 타입이 달라진다. (32 Bit: Int32/UInt32, 64 Bit: Int64/UInt64)
  */
