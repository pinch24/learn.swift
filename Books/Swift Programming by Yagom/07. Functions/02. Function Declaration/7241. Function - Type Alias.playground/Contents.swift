typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
	return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
	return a * b
}

var mathFunction: CalculateTwoInts

mathFunction = addTwoInts
print(mathFunction(2, 5))

mathFunction = multiplyTwoInts
print(mathFunction(2, 5))



/**
 * typealias를 통해 함수를 쉽게 관리할 수 있다.
 * 매개변수와 리턴 타입을 잘 구성하면 좋은 패턴을 만들 수 있다.
 */
