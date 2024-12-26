enum Student: String {
	case elementary = "Elementary", middle = "Middle", high = "High"
	
	init?(koreanAge: Int) {
		switch koreanAge {
			case 8...13:
				self = .elementary
				
			case 14...16:
				self = .middle
				
			case 17...19:
				self = .high
				
			default:
				return nil
		}
	}
	
	init?(bornAt: Int, currentYear: Int) {
		self.init(koreanAge: currentYear - bornAt + 1)
	}
}

var younger: Student? = Student(koreanAge: 20)
print(younger as Any)

younger = Student(bornAt: 2020, currentYear: 2016)
print(younger as Any)

younger = Student(rawValue: "University")
print(younger as Any)

younger = Student(rawValue: "High")
print(younger as Any)

/**
 * ### 11.1.7 실패 가능한 이니셜라이저
 * #### 11-10 열거형의 실패 가능한 이니셜라이저
 * 열거형에서는 case에 맞지 않는 값이 들어오면 생성에 실패할 수 있다.
 * 또는 rawValue로 초기화 할 때 잘못된 값이 전달되면 열거형 인스턴스를 생성하지 못 할 수 있다.
 */
