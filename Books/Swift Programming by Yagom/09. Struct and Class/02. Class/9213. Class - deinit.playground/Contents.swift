class Person {
	var height: Float = 0.0
	var weight: Float = 0.0
	
	deinit {
		print("Person Instance will released.")
	}
}

var chris: Person? = Person()
print(chris as Any)
chris = nil
print(chris as Any)

/**
 * ### 9.2.3 클래스 인스턴스의 소멸
 * 클래스의 인스턴스는 참조 타입이므로 더는 참조할 필요가 없을 때 메모리에서 해제된다.
 * 이 인스턴스의 소멸 과정에서 deinit이라는 디이니셜라이저(Deinitializer)가 호출된다.
 * deinit 메소드는 매개변수와 리턴값을 가지지 않는다. 매개변수를 감싸는 ()도 사용하지 않는다.
 *
 * deinit 메소드에는 인스턴스가 메모리에서 해제되기 직전에 처리할 코드를 넣어준다.
 * 인스턴스가 소멸되기 전에 데이터를 저장해야 하거나 다른 인스턴스에 메시지를 보내야 할 때 deinit 메소드를 구현한다.
 */
