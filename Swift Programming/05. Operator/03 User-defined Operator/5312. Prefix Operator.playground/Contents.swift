prefix func ! (value: String) -> Bool {
	return value.isEmpty
}

var stringValue: String = "Alpha"
var isEmptyString: Bool = !stringValue
print(isEmptyString)

stringValue = ""
isEmptyString = !stringValue
print(isEmptyString)

/**
 * ### 5.3.1 전위 연산자 정의와 구현
 * 스위프트 라이브러리에 이미 존재하는 전위 연산자에 기능을 추가할 때는 연산자 정의 필요 없이 함수만 중복 정의하면 된다.
 *
 * #### 5-8 전위 연산자 함수 중복 정의와 사용
 */
