func sayHello(_ name: String, _ times: Int) -> String {
	var result: String = ""
	
	for _ in 0 ..< times {
		result += "Hello \(name)!" + " "
	}
	
	return result
}

print(sayHello("Chris", 2))

/**
 * #### 7-5 전달인자 레이블이 없는 함수 정의와 사용
 * 전달인자 레이블을 사용하고 싶지 않다면 와일드카드 식별자(_)를 사용한다.
 */
