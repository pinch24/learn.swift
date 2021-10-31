import Foundation

func exec_4414() {
	
	let names = ["Alpha", "Bravo", "Charlie", "Delta"]
	
	let index = names.firstIndex(of: "Bravo")
	print(index)
}

/**
firstIndex(of:) 메서드로 해당 요소의 인덱스를 알아낼 수 있다. 중복된 요소가 있다면 발견된 첫번째 요소의 인덱스를 반환한다.
*/
