import Foundation

prefix operator **
prefix func ** (value: String) -> String {
	return value + " " + value
}

let resultString: String = **"Alpha"
print(resultString)

/**
 * ### 5.3.1 전위 연산자 정의와 구현
 * 앞에서 ** (value: Int) -> Int로 정의했던 연산자를 String 타입에서도 동작할 수 있도록 중복 정의할 수 있다.
 *
 * #### 5-9 사용자 정의 전위 연산자 함수 중복 정의와 사용
 */
