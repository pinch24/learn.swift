var names: [String] = ["Chris", "Brad", "Dennis", "Bjarne", "Graydon", "Guido", "Anders"]

repeat {
	print("Hello, \(names.removeFirst()).")
} while names.isEmpty == false

/**
 * ### 6.2.3 repeat-while 구문
 * repeat 블록의 코드를 먼저 실행한 후 while 구문이 조건이 성립하면 repeat 블록의 코드를 다시 반복한다.
 *
 * #### 6-18 repeat-while 구문의 사용
 */
