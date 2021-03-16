/**
## 4.2 타입 별칭
*/
import Foundation

typealias Age = Int
typealias Year = Int

func exec_4201() {

	let myAge: Age = 18
	var newYear: Year = 2000

	print(myAge)
	print(newYear)
	
	newYear = newYear + myAge
	print(newYear)
}
