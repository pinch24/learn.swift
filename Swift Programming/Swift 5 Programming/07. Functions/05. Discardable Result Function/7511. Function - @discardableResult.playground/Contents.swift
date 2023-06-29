func say(_ something: String) -> String {
	print(something)
	return something
}

@discardableResult func discardableResultSay(_ something: String) -> String {
	print(something)
	return something
}

_ = say("Hello")
discardableResultSay("Good bye")

/**
 * 컴파일러는 함수의 반환값을 사용하지 않으면 경고를 표시한다.
 * 이런 경우 함수를 @discardableResult로 선언하면 경고를 표시하지 않는다.
 *
 * #### 7-17 @discardableResult 선언 속성 사용
 */
