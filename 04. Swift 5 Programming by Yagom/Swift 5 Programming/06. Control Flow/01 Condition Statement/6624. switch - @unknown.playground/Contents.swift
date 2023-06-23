import Foundation

enum Menu {
	case chicken
	case beef
	case poke
	case pizza
}

let lunchMenu: Menu = .pizza

switch lunchMenu {
	case .chicken:
		print("Fried Chicken")
	case .pizza:
		print("Margherita Pizza")
	@unknown case _:
		print("Not Ready")
}

/**
 * #### 6-14 @unknown으로 열거형에 추가한 case에 대한 처리 경고
 * default는 switch의 나머지 case에 대한 구현을 처리하기 때문에 아무런 경고도 표시하지 않는다.
 * 그러나 Enum 타입을 사용할 때 정의하지 않은 case에 대해 경고를 표시하기 위해 @unknown 지시자를 사용할 수 있다.
 * @unknown case _:와 @unknown default:는 동일한 기능을 수행한다.
 */
