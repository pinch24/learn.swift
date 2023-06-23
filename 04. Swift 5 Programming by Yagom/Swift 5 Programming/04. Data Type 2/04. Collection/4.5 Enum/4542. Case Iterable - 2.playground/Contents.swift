fileprivate enum School: String, CaseIterable {
	case primary = "Primary"
	case elementary = "Elementary"
	case middle = "Middle"
	case high = "High"
	case college = "College"
	case university = "Univerity"
	case graduate = "Graduate"
}

fileprivate let allCases: [School] = School.allCases
_ = allCases.map({ print($0.rawValue) })

/**
 * ### 4.5.4 항목 순회
 * #### 4-23. 원시값을 갖는 열거형의 항목 순회
 */
