func sayHelloToFriends(me: String, friends  names: String ...) -> String {
	var result: String = ""
	
	for friend in names {
		result += "Hello \(friend)!" + " "
	}
	
	result += "I'm " + me + "!"
	return result
}

print(sayHelloToFriends(me: "Chris", friends: "Brad", "Graydon", "Anders"))
print(sayHelloToFriends(me: "Chris"))

/**
 * #### 가변 매개변수
 * ### 7-8 가변 매개변수를 가지는 함수의 정의와 사용
 * 매개변수로 몇 개의 값이 들어올지 모를 때 가변 매개변수를 사용할 수 있다.
 * 가변 매개변수는 0개 이상의 값을 지정할 수 있고, 인자 값은 배열로 사용된다.
 * 함수마다 가변 매개변수는 하나만 가질 수 있다.
 */
