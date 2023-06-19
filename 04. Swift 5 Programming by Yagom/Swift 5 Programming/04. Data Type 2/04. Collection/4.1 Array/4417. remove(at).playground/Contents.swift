import Foundation

var names = ["Alpha", "Bravo", "Charlie", "Delta"]

names.remove(at: 1)
print(names)

names.removeFirst()
print(names)

names.removeLast()
print(names)

/**
 * 배열의 요소를 삭제할 때는 remove(at:)를 사용한다.
 */
