struct Area {
	var squareMeter: Double
	
	init() {
		squareMeter = 0.0
	}
}

let room: Area = Area()
print(room.squareMeter)

/**
 * ### 11.1.1 프로퍼티 기본값
 * #### 11-2 Area 구조체와 이니셜라이저
 * 구조체와 클래스의 인스턴스는 처음 생성할 때 옵셔널을 제외한 모든 저장 프로퍼티에 초기값을 할당되어야 한다.
 * 이니셜라이저에서 적절한 초기값을 할당할 수 있다.
 */
