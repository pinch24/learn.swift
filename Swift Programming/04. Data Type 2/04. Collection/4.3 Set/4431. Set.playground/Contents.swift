let names1: Set<String> = Set<String>()
let names2: Set<String> = []

print(names1)
print(names2)
print()

var names: Set<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
print(names)

names.insert("Echo")
print(names)

names.insert("Alpha")
print(names)

names.insert("Delta")
print(names)


/**
 * ### 4.4.3 세트
 * **세트(Set)**는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입이다.
 * 배열, 딕셔너리와 달리 세트에는 중복된 값이 존재하지 않는 컬렉션이다.
 */
