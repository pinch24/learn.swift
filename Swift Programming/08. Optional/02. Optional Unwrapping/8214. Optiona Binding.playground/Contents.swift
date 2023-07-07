var myName: String? = "Chris"
var yourName: String? = nil

if let name = myName, let friend = yourName {
	print("We are Good friend! \(name) & \(friend)")
}

yourName = "Brad"

if let name = myName, let friend = yourName {
	print("We are Best friend! \(name) & \(friend)")
}

/**
 * #### 8-8 옵셔널 바인딩을 사용한 여러 개의 옵셔널과 값의 추출
 * ,를 사용해 바인딩 할 옵셔널을 나열하면 한 번에 여러 옵셔널 값을 추출할 수 있다.
 * 단 바인딩하려는 옵셔널 중 하나라도 값이 없다면 해당 블록 내부의 명령문은 실행되지 않는다.
 */
