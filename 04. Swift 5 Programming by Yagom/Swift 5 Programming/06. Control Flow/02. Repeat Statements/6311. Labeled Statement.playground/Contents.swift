var numbers: [Int] = [3, 4, 6, 7]

numbersLoop: for num in numbers {
	if num > 5 || num < 1 {
		continue numbersLoop
	}
	
	var count: Int = 0
	
	printLoop: while true {
		count += 1
		print(num, count)
		
		if count == num {
			break printLoop
		}
	}
	
	removeLoop: while true {
		if numbers.first != num {
			break numbersLoop
		}
		numbers.removeFirst()
	}
}

/**
 * ## 6.3 구문 이름표
 * 반복문 앞에 레이블을 추가하여 continue, break가 어떤 범위에 적용되는지 명확히 할 수 있다.
 */
