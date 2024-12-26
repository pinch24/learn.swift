func sayHello(to name: String, _ times: Int) -> String {
	var result: String = ""
	
	for _ in 0 ..< times {
		result += "Hello \(name)!" + " "
	}
	
	return result
}

func sayHello(to name: String, repeatCount times: Int) -> String {
	var result: String = ""
	
	for _ in 0 ..< times {
		result += "Hello \(name)!" + " "
	}
	
	return result
}

print(sayHello(to: "Chris", 2))
print(sayHello(to: "Chris", repeatCount: 4))

/**
 * #### 7-6 전달인자 레이블 변경을 통한 함수 중복 정의
 * 전달인자 레이블을 변경하면 함수의 이름 자체가 변경된다.
 * 이것으로 함수 중복 정의(오버로드)로 정의할 수 있다.
 */
