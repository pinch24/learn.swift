typealias CalculateTwoInts1 = (Int, Int) -> Int
typealias CalculateTwoInts2 = (_ lhs: Int, _ rhs: Int) -> Int
//typealias CalculateTwoInts3 = (lhs: Int, rhs: Int) -> Int			// Error!
//typealias CalculateTwoInts2 = (from lhs: Int, to rhs: Int) -> Int	// Error!

/**
 * 전달인자 레이블은 스위프트의 메소드 시그니처 구성 요소가 아니다.
 * 따라서 함수를 타입으로 선언할 때 전달인자 레이블은 포함시킬 수 없다.
 */
