class LevelClass {
	var level: Int = 0 {
		didSet {
			print("Level \(level).")
		}
	}
	
	func reset() {
		print("Reset!")
		level = 0
	}
	
	func levelUp() {
		print("Level Up!")
		level += 1
	}
	
	func levelDown() {
		print("Level Down!")
		level -= 1
		if level < 0 {
			reset()
		}
	}
	
	func jumpLevel(to: Int) {
		print("Jump to \(to)!")
		level = to
	}
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 4)

/**
 * ## 10.2 메서드
 * 메서드는 특정 타입에 관련된 함수를 뜻한다.
 * 클래스, 구조체, 열거형 타입의 인스턴스에 기능하는 인스턴스 메소드를 정의할 수 있다.
 * 클래스, 구조체, 열거형 타입 자체에 관련된 기능하는 타입 메소드를 정의할 수 있다.
 *
 * ### 10.2.1 인스턴스 메소드
 * #### 10-17 클래스의 인스턴스 메소드
 * 인스턴스 메소드는 클래스, 구조체, 열거형 타입에 속한 함수를 뜻한다.
 * 인스턴스 메소드는 인스턴스가 존재할 때만 사용할 수 있다.
 */
