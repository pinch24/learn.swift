func checkOptionalValue(value optionalValue: Any?) {
	switch optionalValue {
		case .none:
			print("This Optional variable is nil")
		case .some(let value):
			print("Value is \(value)")
	}
}

var myName: String? = "Chris"
checkOptionalValue(value: myName)

myName = nil
checkOptionalValue(value: myName)

/**
 * #### 8-4 switch를 통한 옵셔널 값의 확인
 * 옵셔널은 열거형이기 때문에 switch 구문을 통해 값이 있고 없음을 확인할 수 있다.
 */
