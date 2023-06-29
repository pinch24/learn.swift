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
	case _:
		print("Not Ready")
}

/**
 * #### 6-13 열거형의 모든 case를 처리하는 switch 구문의 상태
 * case _:는 default:와 동일한 기능을 수행한다.
 */
