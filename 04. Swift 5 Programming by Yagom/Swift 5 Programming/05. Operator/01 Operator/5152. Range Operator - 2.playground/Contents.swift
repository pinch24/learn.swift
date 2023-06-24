for i in 5... {
	guard i < 10 else { break }
	print(i, terminator: " ")
}
print()

/**
 * ### 5.1.5 범위 연산자
 * 값(수)의 범위를 나타내고자 할 때 사용한다.
 * - 단방향 범위 연산자(One Side Ranges Operator): A..., ...A, ..<A
 */
