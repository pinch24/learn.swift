typealias MoveFunc = (Int) -> Int

func goRight(_ currentPosition: Int) -> Int {
	return currentPosition + 1
}

func goLeft(_ currentPosition: Int) -> Int {
	return currentPosition - 1
}

func functionForMove(_ shouldGoLeft: Bool) -> MoveFunc {
	return shouldGoLeft ? goLeft : goRight
}

var position: Int = 3

let moveToZero: MoveFunc = functionForMove(position > 0)
print("Return to Zero")

while position != 0 {
	print("\(position)...")
	position = moveToZero(position)
}
print("Reach to Zero")

/**
 * ## 7.3 중첩 함수
 * 함수는 특별한 위치에 속해있지 않는 한 모두 전역함수이다.
 * 즉, 모듈 어디서든 사용할 수 있는 함수라는 뜻이다.
 *
 * 상위 함수의 내에 구현된 중첩 함수는 상위 함수의 블록 내에서만 사용할 수 있다.
 * 그러나 함수는 반환값으로 사용될 수 있으므로 중첩 함수를 리턴하면 외부에서도 사용할 수 있다.
 *
 * #### 7-14 원점으로 이동하기 위한 함수
 */
