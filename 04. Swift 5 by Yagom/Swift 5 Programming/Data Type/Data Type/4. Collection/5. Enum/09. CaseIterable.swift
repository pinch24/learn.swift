/**
열거형의 모든 케이스가 필요할 때 CaseIterable 프로토콜을 사용한다.
*/
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

func exec_() {
	
	let allCases: [School] = School.allCases
	print(allCases)
}
