struct LevelClass {
	var level: Int = 0 {
		didSet {
			print("Level \(level).")
		}
	}
	
	mutating func reset() {
		print("Reset!")
		level = 0
	}
	
	mutating func levelUp() {
		print("Level Up!")
		level += 1
	}
	
	mutating func levelDown() {
		print("Level Down!")
		level -= 1
		if level < 0 {
			reset()
		}
	}
	
	mutating func jumpLevel(to: Int) {
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
 * #### mutaing
 * #### 10-18 mutating 키워드의 사용
 * 참조 타입인 클래스는 인스턴스의 프로퍼티의 수정에 신경쓸 필요가 없다.
 * 그러나 값 타입인 구조체, 열거형은 인스턴스의 프로퍼티를 수정하는 메소드에는 mutating 키워드를 붙여서 해당 메소드가 인스턴스 내부의 값을 변경한다는 것을 명시해야 한다.
 */
