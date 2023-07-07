var myName: String! = "Chris"
print(myName as Any)
myName = nil

if let name = myName {
	print("My name is \(name)")
}
else {
	print("myName == nil")
}

/**
 * #### 8-9 암시적 추출 옵셔널의 사용
 * 옵셔널 타입을 정의할 때 ? 대신 !를 사용하면 암시적 추출 옵셔널로 지정된다.
 * 이 타입은 일반 값철머 사용할 수 있으나 여전히 옵셔널이기 때문에 nil을 할당해줄 수 있다.
 * 그러나 nil이 할당되어 있을 때 접근을 시도하면 런타임 오류가 발생한다.
 */
