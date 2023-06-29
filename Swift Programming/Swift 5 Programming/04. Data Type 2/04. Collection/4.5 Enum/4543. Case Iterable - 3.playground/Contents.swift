fileprivate enum School: String, CaseIterable {
	case primary = "Primary"
	case elementary = "Elementary"
	case middle = "Middle"
	case high = "High"
	case college = "College"
	case university = "University"
	@available(iOS, obsoleted: 12.0)
	case graduate = "Graduate"
	
	static var allCases: [School] {
		let all: [School] = [.primary,
							 .elementary,
							 .middle,
							 .high,
							 .college,
							 .university]
		
		#if os(iOS)
		return all
		#else
		return all + [.graduate]
		#endif
	}
}

fileprivate let allCases: [School] = School.allCases
_ = allCases.map({ print($0.rawValue) })

/**
 * ### 4.5.4 항목 순회
 * #### 4-24. available 속성을 갖는 열거형의 항목 순회
 * @available 속성을 통해 특정 케이스를 플랫폼에 따라 유무가 생기면 CaseIterable 프로토콜을 채택하는 것 만으로 allCases 프로퍼티를 사용할 수 없다. 그럴 때는 직접 allCases 프로퍼티를 구현해 주어야 한다.
 */
