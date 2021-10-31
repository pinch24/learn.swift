import Foundation

func exec_4434() {
	
	let bird: Set<String> = ["Chicken", "Dove", "Goose", "Swan"]
	let mammal: Set<String> = ["Bear", "Cat", "Dog", "Lion", "Wolf"]
	let animal: Set<String> = bird.union(mammal)
	print(animal)

	print(bird.isDisjoint(with: mammal))
	print(bird.isSubset(of: animal))
	print(animal.isSuperset(of: mammal))
	print(animal.isSuperset(of: bird))
}

/**
세트는 내부의 값들이 모두 유일함을 보장하므로 집합관계를 표현하고자 할 때 유용하게 쓰일 수 있고 교집합, 합집합 등을 연산하기에 용이하다.
*/
