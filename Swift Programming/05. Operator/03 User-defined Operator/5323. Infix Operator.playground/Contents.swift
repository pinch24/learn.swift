infix operator ** : MultiplicationPrecedence
func ** (lhs: String, rhs: String) -> Bool {
	return lhs.contains(rhs)
}

let hello: String = "Hello Alpha"
let alpha: String = "Alpha"
print("\(hello) ** \(alpha) = \(hello ** alpha)")

/**
 * ### 5.3.3 중위 연산자 정의와 구현
 * 중위 연산자는 우선순위 그룹을 명시해줄 수 있다.
 * 중위 연산자를 정의할 때 우선순위 그룹을 명시해주지 않으면 우선순위가 가장 높은 DefaultPrecedence 그룹을 우선순위 그룹으로 갖게 된다.
 * (전위 연산자와 후위 연산자는 결합방향 및 우선순위를 지정하지 않는다. 하나의 피연산자에 전위 연산과 후위 연산을 사용하면 후위 연산을 먼저 수행한다.)
 *
 * precedencegroup 우선순위 그룹 이름 {
 * 	higherThan: 더 낮은 우선순위 그룹 이름
 * 	lowerThan: 더 높은 우선순위 그룹 이름
 * 	associativity: 결합방향(left / right / none)		// 디폴트는 none
 * 	assignment: 할당방향 사용(true / false)		// 옵셔널 체이닝 - true: 오른쪽으로, false: 왼쪽으로
 * }
 *
 * #### 5-13 중위 연산자의 구현과 사용
 */
