var myName: String? = "Chris"

if let name = myName {
	print("My name is \(name)")
}
else {
	print("myName == nil")
}

if var name = myName {
	name = "Chris Lattner"
	print("My name is \(name)")
}
else {
	print("myName == nil")
}

/**
 * #### 8-7 옵셔널 바인딩을 사용한 옵셔널 값의 추출
 * 옵셔널 바인딩은 옵셔널에 값이 있는지 확인할 때 사용한다.
 * 옵셔널 바인딩은 if 또는 while 문과 결합하여 사용할 수 있다.
 */
