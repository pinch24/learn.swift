func sayHelloWorld() {
	print("Hello, world.")
}
sayHelloWorld()

func sayHello(from myName: String, to name: String) {
	print("Hello \(name)! I'm \(myName)")
}
sayHello(from: "Chris", to: "Brad")

func sayGoodbye() -> Void {
	print("Good bye")
}
sayGoodbye()

/**
 * ### 7.2.3 반환이 없는 함수
 * #### 7-10 반환값이 없는 함수의 정의와 사용
 * 반환값이 없는 함수라면 리턴 타입을 Void로 선언하거나 리턴 타입을 생략해도 된다.
 */
