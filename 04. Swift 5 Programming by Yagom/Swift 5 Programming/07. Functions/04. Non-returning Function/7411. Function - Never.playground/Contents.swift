func crashAndBurn() -> Never {
	fatalError("Something wrong!")
}

//crashAndBurn()	// Crash!

func someFunction(isAllIsWell: Bool) {
	guard isAllIsWell else {
		print("Warning! Warning!")
		crashAndBurn()
	}
	print("All is well")
}

someFunction(isAllIsWell: true)
//someFunction(isAllIsWell: false)	// Crash!

/**
 * ## 7.4 종료되지 않는 함수
 * 비반환 함수는 정상적으로 끝날 수 없는 함수이다.
 * 이 함수에 의해서 프로세스는 종료된다.
 *
 * 비반환 함수는 반환 타입을 Never로 명시하는 것으로 선언한다.
 *
 * #### 7-16 비반환 함수의 정의와 사용
 */
