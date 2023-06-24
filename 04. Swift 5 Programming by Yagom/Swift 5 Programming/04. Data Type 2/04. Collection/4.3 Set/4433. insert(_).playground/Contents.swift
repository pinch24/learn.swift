var names: Set<String> = ["Alpha", "Bravo", "Charlie", "Delta"]

names.insert("Echo")
print(names)

names.remove("Alpha")
print(names)

/**
 * Set에 요소를 추가하려면 insert(\_:), 삭제하려면 remove(\_:) 메소드를 사용한다.
 */
