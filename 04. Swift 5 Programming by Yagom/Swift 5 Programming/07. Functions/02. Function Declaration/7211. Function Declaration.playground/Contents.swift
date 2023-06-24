func hello(name: String) -> String {
	return "Hello, \(name)!"
}

func introduce(name: String) -> String {
	"I created " + name + "."
}

let greeting: String = hello(name: "Everyone")
print(greeting)

let introduce: String = introduce(name: "Swift")
print(introduce)

/**
 * #### 7-1 기본 형태의 함수 정의와 사용
 * ### 7.2.1 기본적인 함수의 정의와 호출
 * 스위프트는 함수의 이름과 매개변수(Parameter), 반환 타입(Return Type) 등을 사용하여 함수를 정의한다.
 *
 * 함수는 func 키워드로 정의하고, 매개변수는 소괄호()로 감싸고, 반환 타입은 ->를 사용하여 명시한다.
 * 함수의 본문은 중괄호{}로 감싸고 return 문으로 값을 반환한다.
 * 함수의 마지막에 있는 return 키워드는 생략 가능하다.
 *
 * Parameter는 외부로부터 값을 받아들이는 변수를 의미한다.
 * Argument는 함수를 호출할 때 전달된 값을 의미한다.
 */
