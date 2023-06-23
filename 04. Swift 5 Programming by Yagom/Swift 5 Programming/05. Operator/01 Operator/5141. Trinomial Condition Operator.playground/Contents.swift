var valueA: Int = 3
var valueB: Int = 5
var biggerValue: Int = valueA > valueB ? valueA : valueB
print(biggerValue)
print()

valueA = 0
valueB = -3
biggerValue = valueA > valueB ? valueA : valueB
print(biggerValue)
print()

let stringA: String = ""
var resultValue: Double = stringA.isEmpty ? 0.0: 5.0
print(resultValue)
print()

let stringB: String = "Hello"
resultValue = stringB.isEmpty ? 0.0: 5.0
print(resultValue)
print()

/**
 * ### 5.1.4 삼항 조건 연산자
 * 삼항 조건 연산자는 피연산자가 세 개인 조건 연산자이다.
 */
