var result: Int = 1

for _ in 1 ... 3 {
	result *= 10
}

print("10 * 10 * 10 = \(result)")

/**
 * 시퀀스 값이 필요없다면 와일드카드 식별자(_)를 생략할 수 있다.
 */
