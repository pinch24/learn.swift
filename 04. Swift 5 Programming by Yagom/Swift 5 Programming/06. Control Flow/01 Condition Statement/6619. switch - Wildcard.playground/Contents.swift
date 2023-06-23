import Foundation

typealias NameBirth = (name: String, birth: Int)

let tuple: NameBirth = ("Chris", 45)

switch tuple {
	case ("Chris", 78):
		print("Correct!")
	case ("Chris", _):
		print("Correct Name, Incorrect Birth: \(tuple.birth)")
	case (_, 45):
		print("Correct Birth, Incorrect Name: \(tuple.name)")
	default:
		print("Who are you looking for?")
}

/**
 * #### 6-9 와일드카드 식별자를 사용한 튜플 switch case 구성
 * case 문의 순서를 바꾸면 조건 결과도 다를 것이다.
 */
