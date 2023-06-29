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
 * #### 7-16 비반환 함수의 정의와 사용
 */


/**
 * 참고: https://nshipster.co.kr/never/
 * 비반환 함수는 반환 타입을 Never로 명시하는 것으로 선언한다.
 * 이렇게 선언하면 컴파일러는 리턴값이 없다는 것으로 판단한다.
 * Result<String, Never> 처럼 Result 타입의 Error를 Never로 지정하면 실패 처리가 필요없다는 것을 의미하고 .failure 상태를 처리하지 않아도 되기 때문에 구현을 생략할 수 있도록 한다.
 *
 * 무조건적인 오류, 트랩 혹은 종료되지 않는 무언가를 발생시키는 함수를 정의할 때 리턴값으로 Never을 사용한다.
 * 리턴값이 Never 인 함수는 함수 내에서 오류를 던지거나 중대한 시스템 오류를 보고하고 프로세스를 종료하기 때문에 defer 구문을 실행하지 않는다.
 */
