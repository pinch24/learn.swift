let numbers: [Int?] = [2, nil, -4, nil, 100]

for number in numbers {
	switch number {
		case .some(let value) where value < 0:
			print("Negative Value: \(value)")
		case .some(let value) where value > 3:
			print("Large Value: \(value)")
			
		case .some(let value):
			print("Value \(value)")
			
		case .none:
			print("Nil")
	}
}

/**
 * #### 8-5 switch를 통한 옵셔널 값의 확인
 * switch - case에 where 절과 병합하면 케이스의 조건을 세분화할 수 있다.
 */
