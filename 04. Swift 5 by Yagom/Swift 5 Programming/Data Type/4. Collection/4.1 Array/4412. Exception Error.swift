/**
배열의 인덱스는 0부터 시작한다. 잘못된 인덱스로 접근하면 익셉션 에러(Exception Error)가 발생한다.
*/
import Foundation

func exec_4412() {
	
	let names: Array<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
	print(names[4])
}
