class AClass {
	static func staticTypeMethod() {
		print("AClass staticTypeMethod")
	}
	
	class func classTypeMethod() {
		print("AClass classTypeMethod")
	}
}

class BClass: AClass {
	#if ERROR
	override static func staticTypeMethod() {
		print("BClass staticTypeMethod Override")
	}
	#endif
	
	override static func classTypeMethod() {
		print("BClass classTypeMethod Override")
	}
}

AClass.staticTypeMethod()
AClass.classTypeMethod()
print()

BClass.staticTypeMethod()
BClass.classTypeMethod()
print()

/**
 * ### 10.2.2 타입 메소드
 * #### 10-21 클래스의 타입 메소드
 * 타입 자체에 호출이 가능한 메서드를 타입 메소드라고 한다.
 * 메소드 앞에 static 키워드를 사용하여 타입 메소드임을 나타낸다.
 * 클래스 타입에서는 static으로 정의하면 상속된 타입에서 메소드 재정의가 불가능하다. class로 정의하면 상속된 타입에서도 메소드 재정의가 가능하다.
 */
