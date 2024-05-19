fileprivate enum School: String {
	case primary = "Primary"
	case elementary = "Elementary"
	case middle = "Middle"
	case high = "High"
	case college = "College"
	case university = "University"
	case graduate = "Graduate"
}

fileprivate let highestEducationLevel = School.university
print("Highest Education: \(highestEducationLevel.rawValue)")

/**
 * ### 4.5.2 원시 값
 * #### 4-17. 열거형의 원시 값 지정과 사용
 * 열거형의 각 항목은 자체로도 하나의 값이지만 항목의 원시 값(Raw Value)도 가질 수 있다. 즉, 특정 타입으로 지정된 값을 가질 수 있다.
 */
