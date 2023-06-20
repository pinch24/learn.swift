import Foundation

fileprivate enum Numbers: Int {
	case zero
	case one
	case two
	case ten = 10
}

fileprivate let one = Numbers(rawValue: 1)
fileprivate let three = Numbers(rawValue: 3)

print(one as Any)
print(three as Any)

/**
 * ### 4.5.2 원시 값
 * #### 4-19. 원시 값을 통한 열거형 초기화
 * rawValue: 옵션을 통해 원시값으로 변수를 생성할 수도 있다.
 * 올바르지 않은 원시 값을 통해 생성하려고 한다면 nil을 반환한다. 이는 실패 가능한 이니셜라이저 기능이다.
*/
