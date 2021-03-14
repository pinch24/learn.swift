/**
5.1.3 비교(comparison) 연산자
두 값을 비교할 때 사용한다.
스위프트의 기본 타입은 모두 구조체로 구현되어 있기 때문에 값 타입을 비교하는데 사용된다.
*/
import Foundation

func exec_5104() {
	
	let a = 4
	let b = 2
	
	print("\(a) == \(b) = \(a == b)")
	print("\(a) >= \(b) = \(a >= b)")
	print("\(a) <= \(b) = \(a <= b)")
	print("\(a) > \(b) = \(a > b)")
	print("\(a) < \(b) = \(a < b)")
	print("\(a) != \(b) = \(a != b)")
}
