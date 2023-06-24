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

func chooseMathFunction(_ toAdd: Bool) -> CalculateTwoInts {
	return toAdd ? addTwoInts : multiplyTwoInts
}

printMathResult(chooseMathFunction(true), 3, 5)

/**
 * #### 7-13 특정 조건에 따라 적절한 함수를 반환해주는 함수
 */
