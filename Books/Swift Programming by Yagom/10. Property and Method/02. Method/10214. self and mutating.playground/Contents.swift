class LevelClass {
	var level: Int = 0
	
	func reset() {
		print("Reset!")
		level = 0
		
		#if ERROR
		self = LevelCkass()		// Error! 클래스는 self 프로퍼티 참조 변경 불가
		#endif
	}
}

struct LevelStruct {
	var level: Int = 0
	
	mutating func reset() {
		print("Reset!")
		self = LevelStruct()
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
	
	mutating func jumpLevel(to level: Int) {
		print("Jump to \(level)!")
		self.level = level
	}
}

var levelStructInstance: LevelStruct = LevelStruct()
levelStructInstance.levelUp()
print(levelStructInstance.level)

levelStructInstance.reset()
print(levelStructInstance.level)

/**
 * #### 10-20 self 프로퍼티와 mutating 키워드
 * 구조체, 열거형의 self 프로퍼티는 값 타입이어서 self 프로퍼티에 다른 인스턴스 값으로 치환할 수 있다.
 * 클래스의 self 프로퍼티는 참조 타입이라서 self 프로퍼티에 다른 참조를 할당할 수 없다.
 */
