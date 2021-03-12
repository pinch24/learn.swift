/**
4.5.4 항목 순회
4-23. 원시값을 갖는 열거형의 항목 순회
원시 값을 갖는 열거형에 CaseIterable 프로토콜을 지정할 수도 있다.
*/
import Foundation

fileprivate enum School: String, CaseIterable {
	case primary = "유치원"
	case elementary = "초등학교"
	case middle = "중학교"
	case high = "고등학교"
	case college = "대학"
	case university = "대학교"
	case graduate = "대학원"
}

func exec_4542() {
	
	let allCases: [School] = School.allCases
	_ = allCases.map({ print($0.rawValue) })
}
