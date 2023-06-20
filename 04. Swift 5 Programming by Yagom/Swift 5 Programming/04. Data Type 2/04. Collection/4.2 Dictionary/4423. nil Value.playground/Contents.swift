import Foundation

var numberForName = ["Alpha": 1, "Bravo": 2, "Charlie": 3, "Delta": 4]
print(numberForName["Echo"] as Any)

/**
 * 딕셔너리는 배열과 달리 내부에 없는 키로 접근해도 오류가 발생하지 않고 nil을 반환한다.
 */
