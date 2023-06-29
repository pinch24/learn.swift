func addTwoInts(_ a: Int, _ b: Int) -> Int {
	return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
	return a * b
}

var mathFunction: (Int, Int) -> Int

mathFunction = addTwoInts
print(mathFunction(2, 5))

mathFunction = multiplyTwoInts
print(mathFunction(2, 5))

/**
 * ### 7.2.4 데이터 타입으로서의 함수
 * 스위프트의 함수는 일급 객체이므로 하나의 데이터 타입으로 사용할 수 있다.
 * 즉, 각 함수는 매개변수 타입과 반환 타입으로 구성된 하나의 타입으로 정의된다.
 *
 * 함수를 데이터 타입으로 사용할 수 있다는 것은 함수를 전달인자로 받을 수도, 반환값으로 돌려줄 수도 있다는 의미다.
 * 상황에 맞는 함수를 전달인자로 넘겨 적절한 처리를 할 수도 있고 상황에 맞는 함수를 반환해주는 것도 가능하다는 뜻이다.
 * 이것은 스위프트의 함수가 일급 객체이기 때문에 가능한 일이다.
 *
 * #### 7-11 함수 타입의 사용
 */
