class Person {
	var height: Float = 0.0
	var weight: Float = 0.0
}

var chris: Person = Person()
let friend: Person = chris
let anotherFriend: Person = Person()

print(chris === friend)
print(chris === anotherFriend)
print(friend !== anotherFriend)

/**
 * #### 9-7 식별 연산자의 사용
 * 클래스의 인스턴스끼리 참조가 같은지 확인할 때는 식별 연산자(===, !==)를 사용한다.
 */
