enum OnOffSwitch {
	case on, off
	
	mutating func nextState() {
		self = self == .on ? .off : .on
	}
}

var toggle: OnOffSwitch = OnOffSwitch.off
toggle.nextState()
print(toggle)

/**
 * 열거형은 케이스를 갖는 데이터 타입으로 주로 데이터의 상태를 다루기위해 사용한다.
 * 열거형의 self 프로퍼티는 인스턴스를 치환할 수 있기 때문에 토글 기능의 구현도 간단하다.
 */
