import Foundation

enum School {
	case primary, elementary, middle, high, college, university, graduate
}

let finalEducation: School = .university

switch finalEducation {
	case .primary:
		print("Final Education is Primary.")
	case .elementary:
		print("Final Education is Elementary.")
	case .middle:
		print("Final Education is Middle.")
	case .high:
		print("Final Education is High.")
	case .college:
		print("Final Education is College.")
	case .university:
		print("Final Education is University.")
	case .graduate:
		print("Final Education is Graduate.")
}

/**
 * #### 6-12 열거형을 입력 값으로 받는 switch 구문
 * switch에 사용된 Enum 타입의 모든 case를 정의하지 않으면 case exhaustive 에러가 발생한다.
 * 모든 Enum case를 구현하거나 default를 추가하는 것으로 해결할 수 있다.
 * 모든 Enum case를 구현하고도 default가 추가되어있으면 never be executed 경고가 발생한다.
 */
