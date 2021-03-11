/**
일부 항목만 원시 값을 지정할 수도 있다.
원시 값 타입을 문자열 타입으로 지정하면 각 항목 이름을 그대로 원시 값으로 갖게 되고,
원시 값 타입을 정수 타입으로 지정하면 첫 항목을 기준으로 0부터 1씩 늘어난 값을 갖게 된다.
*/
import Foundation

fileprivate enum Numbers: Int {
	
	case zero
	case one
	case two
	case ten = 10
}

func exec_4505() {
	
	print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")
}
