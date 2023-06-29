struct BasicInformation {
	var name: String
	var age: Int
}

var chrisInfo: BasicInformation = BasicInformation(name: "Chris", age: 78)
chrisInfo.age = 45
chrisInfo.name = "Chris Lattner"
print(chrisInfo)

let bradInfo: BasicInformation = BasicInformation(name: "Brad", age: 44)
#if ERROR
bradInfo.age = 79				// Error!
bradInfo.name = "Brad J. Cox"	// Error!
#endif
print(bradInfo)

/**
 * ### 9.1.2 구조체 인스턴스의 생성 및 초기화
 * #### 9-2 구조체의 인스턴스 생성 및 사용
 * 구조체는 이니셜라이저를 정의하지 않으면 자동으로 멤버 와이즈 이니셜라이저(Memberwise Initializer)를 생성한다.
 * 멤버와이즈 이니셜라이저의 매개변수는 구조체의 프로퍼티 이름으로 지정된다.
 */
