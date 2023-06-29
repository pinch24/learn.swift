var myName: String? = "Chris"
var chris: String = myName!

myName = nil
//chris = myName!	// Error!

if myName != nil {
	print("My name is \(myName!)")
}
else {
	print("myName == nil")
}

/**
 * #### 8-6 옵셔널 값의 강제 추출
 * 옵셔널 강제 추출 방식은 옵셔널의 값을 추출하는 가장 간단한 방식이지만 런타임 오류가 일어날 가능성이 있는 가장 위험한 방법이다.
 * 옵셔널을 만든 의미가 무색해지는 방법이기도 하다.
 */
