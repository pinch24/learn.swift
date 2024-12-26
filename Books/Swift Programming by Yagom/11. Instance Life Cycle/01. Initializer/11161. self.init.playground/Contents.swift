enum Student {
	case elementary, middle, high
	case none
	
	init() {
		self = .none
	}
	
	init(koreanAge: Int) {
		switch koreanAge {
			case 8...13:
				self = .elementary
				
			case 14...16:
				self = .middle
				
			case 17...19:
				self = .high
				
			default:
				self = .none
		}
	}
	
	init(bornAt: Int, currentYear: Int) {
		self.init(koreanAge: currentYear - bornAt + 1)
	}
}

var younger: Student = Student(koreanAge: 16)

/**
 * ### 11.1.6 초기화 위임
 * #### 11-8 열거형의 초기화 위임
 * 값 타입인 구조체와 열거형은 코드의 중복을 피하기 위하여 이니셜라이저가 다른 이니셜라이저에게 초기화를 위임하도록 구현할 수 있다.
 * 참조 타입인 클래스는 상속을 지원하기 때문에 초기화 위임을 할 수 없다.
 *
 * 값 타입 인스턴스가 다른 이니셜라이저를 호울하려면 self.init을 사용한다.
 * self.init는 이니셜라이저 안에서만 사용할 수 있다.
 * self.init를 사용한다는 것은 사용자 정의 이니셜라이저를 정의했다는 의미다.
 * 사용자 정의 이니셜라이저를 사용하면 멤버와이즈 이니셜라이즈가 사용되지 않는다. 따라서 초기화 위임을 하려면 최소 두 개 이상의 사용자 정의 이니셜라이저를 정의해야 한다.
 * 사용자 정의 이니셜라이저를 정의할 때도 기본 이니셜라이저나 멤버와이즈 이니셜라이저를 사용하고 싶다면 익스텐션을 사용하여 사용자 정의 이니셜라이저를 구현한다. - check
 */
