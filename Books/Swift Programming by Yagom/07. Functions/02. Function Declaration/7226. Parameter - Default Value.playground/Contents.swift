func sayHello(_ name: String, times: Int = 2) -> String {
	var result: String = ""
	
	for _ in 0 ..< times {
		result += "Hello \(name)!" + " "
	}
	
	return result
}

print(sayHello("Chris"))
print(sayHello("Chris", times: 4))

/**
 * #### 매개변수 기본값
 * #### 7-7 매개변수 기본값이 있는 함수의 정의와 사용
 * 매개변수 기본값을 지정하면 매개변수가 전달되지 않을 때 기본값을 사용한다.
 */
