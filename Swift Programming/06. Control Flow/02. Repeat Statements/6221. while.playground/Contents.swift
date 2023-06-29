var names: [String] = ["Chris", "Brad", "Dennis", "Bjarne", "Graydon", "Guido", "Anders"]

while names.isEmpty == false {
	print("Hello, \(names.removeFirst()).")
}

/**
 * ### 6.2.2 while 구문
 * while 문은 특정 조건(Bool 타입)이 성립하는 한 블록 내부의 코드를 반복해서 실행한다.
 * continue, break 등의 제어 키워드 사용이 가능하다.
 *
 * #### 6-17 while 구문의 사용
 */
