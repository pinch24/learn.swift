import Foundation

fileprivate enum School: CaseIterable {
	case primary
	case elementary
	case middle
	case high
	case college
	case university
	case graduate
}

fileprivate let allCases: [School] = School.allCases
_ = allCases.map({ print($0) })

/**
 * ### 4.5.4 항목 순회
 * #### 4-22. CaseIterable 프로토콜을 활용한 열거형의 항목 순회
 * 열거형의 모든 케이스가 필요할 때 **CaseIterable** 프로토콜을 사용한다.
*/
