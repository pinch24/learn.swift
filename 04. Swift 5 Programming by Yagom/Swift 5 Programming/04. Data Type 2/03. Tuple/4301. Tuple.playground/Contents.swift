import Foundation

var person: (String, Int, Double) = ("John", 18, 182.4)
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")

person.1 = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")

/**
 * ## 4.3 튜플
 * 튜플은 '저장된 데이터의 묶음'이라고 표현할 수 있다.
 */
