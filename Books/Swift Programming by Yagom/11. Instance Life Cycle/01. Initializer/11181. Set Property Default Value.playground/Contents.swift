struct Student {
	var name: String?
	var number: Int?
}

class SchoolClass {
	var students: [Student] = {
		var arr: [Student] = [Student]()
		
		for num in 1...15 {
			var student: Student = Student(name: nil, number: num)
			arr.append(student)
		}
		
		return arr
	}()
}

let myClass: SchoolClass = SchoolClass()
print(myClass.students.count)

/**
 * ### 11.1.8 함수를 사용한 프로퍼티 기본값 설정
 * #### 11-12 클로저를 통한 student 프로퍼티 기본값 설정
 * 인스턴스를 초기화할 때 함수나 클로저를 호출한 연산 결과값을 프로퍼티 기본값으로 할당할 수 있다.
 * 이때 함수나 클로저의 리턴 타입은 프로퍼티 타입과 일치해야 한다.
 *
 * 프로퍼티 기본값 설정에 클로저를 사용하면 이 클로저가 살행되는 시점은 초기화할 때 인스턴스의 다른 프로퍼티 값이 설정되기 전이다.
 * 그래서 이 클로저에서는 인스턴스의 다른 프로퍼티를 사용할 수 없다. 기본값이 지정된 프로퍼티라도 사용할 수 없다. self 프로퍼티도 사용할 수 없고, 인스턴스 메소드도 호출할 수 없다.
 *
 * 클로저 블록 끝에 ()를 붙여야 클로저가 실행된다.
 * 만약 ()을 붙이지 않으면 프로퍼티의 기본값은 클로저가 된다.
 */
