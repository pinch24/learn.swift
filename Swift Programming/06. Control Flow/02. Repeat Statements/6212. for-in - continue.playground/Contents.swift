for i in 0 ... 5 {
	if i.isMultiple(of: 2) {
		print("\(i)")
		continue
	}
	
	print("\(i) == Odd")
}

/**
 * for-in 구문에서 continue를 사용하면 다음 시퀀스로 건너뛴다.
 */
