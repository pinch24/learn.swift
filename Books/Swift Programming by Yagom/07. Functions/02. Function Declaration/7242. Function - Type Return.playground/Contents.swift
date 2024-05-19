typealias CalculateTwoInts = (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
	return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
	return a * b
}

func printMathResult(_ mathFunction: CalculateTwoInts, _ a: Int, _ b: Int) {
	print("Result: \(mathFunction(a, b))")
}

printMathResult(addTwoInts, 3, 5)

/**
 * #### 7-12 전달인자로 함수를 전달받는 함수
 */
