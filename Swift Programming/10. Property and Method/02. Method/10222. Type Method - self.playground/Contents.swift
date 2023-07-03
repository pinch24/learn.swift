struct SystemVolume {
	static var volume: Int = 5
	
	static func mute() {
		self.volume = 0
	}
}

class Navigation {
	var volume: Int = 5
	
	func guideWay() {
		SystemVolume.mute()
	}
	
	func finishGuideWay() {
		SystemVolume.volume = self.volume
	}
}

SystemVolume.volume = 10

let myNavi: Navigation = Navigation()
myNavi.guideWay()
print(SystemVolume.volume)

myNavi.finishGuideWay()
print(SystemVolume.volume)

/**
 * #### 10-22 타입 프로퍼티와 타입 메소드의 사용
 * 인스턴스 메소드의 self 프로퍼티는 인스턴스를 가리킨다.
 * 타입 메소드의 sefl 프로퍼티는 타입을 가리킨다.
 * 그래서 타입 메소드 내부에서 self는 타입 이름과 같은 뜻으로 쓰인다.
 * 이것은 제네릭으로 타입을 구현할 때 용이하다.
 */
