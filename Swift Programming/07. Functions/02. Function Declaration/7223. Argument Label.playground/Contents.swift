func sayHello(from myName: String, to yourName: String) -> String {
	return "Hello \(yourName)! I'm \(myName)."
}

print(sayHello(from: "Chris", to: "Brad"))

/**
 * #### 매개변수 이름과 전달인자 레이블
 * #### 7-4 매개변수 이름과 전달인자 레이블을 가지는 함수 정의와 사용
 * 스위프트에서 함수를 정의할 때 기본적으로 매개변수 이름과 전달인자 레이블은 같은 이름을 사용한다.
 * 전달인자 레이블을 별도로 지정하면 함수 외부에서 매개변수의 역할을 좀 더 명확하게 할 수 있다.
 */
