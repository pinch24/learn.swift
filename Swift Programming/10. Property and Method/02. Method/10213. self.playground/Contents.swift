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
	
	func jumpLevel(to level: Int) {
		print("Jump to \(level)!")
		self.level = level
	}
}

var levelClassInstance: LevelClass = LevelClass()
levelClassInstance.levelUp()
levelClassInstance.levelDown()
levelClassInstance.levelDown()
levelClassInstance.jumpLevel(to: 4)

/**
 * #### self 프로퍼티
 * #### 10-19 self 프로퍼티의 사용
 * 모든 인스턴스는 암시적으로 생성된 self 프로퍼티를 가진다.
 * 인스턴스 자신을 가리키는 프로퍼티이다.
 * 인스턴스 내에서 자신을 더 명확히 지칭하고 싶을 때 사용한다.
 *
 * 인스턴스 내에서 이름이 겹칠 때는,
 * 지역변수, 메서드 매개변수, 인스턴스 프로퍼티 차례로 우선순위를 가진다.
 * 이렇게 중복되는 이름들 사이에서 인스턴스 프로퍼티를 지칭하고 싶을 때 self를 사용한다.
 */
