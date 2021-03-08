# Swift Programming, 3rd
Swift 5, 2019.10.01
---- 

# 1. Swift

# 1.2 스위프트의 언어적 특성

### 1.2.1 객체지향

#### 객체지향 프로그래밍 패러다임
**객체지향 프로그래밍(Object-Oriented Programming, OOP)**은 컴퓨터 프로그램을 명령어의 목록으로 보는 명령형 프로그래밍 패러다임에서 벗어나 각각 독립된 단위인 객체로 구성하는 방법이다.

각 객체는 서로 메시지를 주고 받고 데이터를 처리할 수 있다.

소프트웨어 공학의 관점에서 소프트웨어의 질을 향상하려면 **강한 응집력(Strong Cohesion)**과 **약한 결합력(Weak Coupling)**을 지향해야 합니다. 객체지향 프로그래밍은 클래스에 하나의 문제 해결을 위한 데이터와 메서드를 모아놓은 방식으로 응집력을 강화한다. 또, 각 클래스는 독립적이 되도록 디자인해 결합력을 약화한다.

#### 클래스와 객체
- 클래스(Class): 객체지향 프로그램의 기본 사용자 정의 데이터 타입
- 객체(Object): 클래스의 인스턴스(instance, 실제로 메모리에 할당된 것)
- 메서드(Method) or 메시지(Message): 클래스에 정의된 함수

### 1.2.2 함수형

#### 함수형 프로그래밍 패러다임
**함수형 프로그래밍(Functional Programming)**은 프로그램의 상태 변화 없이 데이터 처리를 수학적 함수 계산으로 취급하는 방법이다. 명령형과 객체지향 프로그래밍에서는 프로그램에서 아규먼트, 포인터, 레퍼런스 등의 값이나 상태의 변화를 중요하게 여기지만, 함수형 프로그래밍에서는 함수 자체의 응용을 중요하게 여긴다.

함수형 프로그래밍은 함수에 전달된 인자 값만 결과에 영향을 주므로 상태 값을 갖지 않고 함수만으로 동작한다. 따라서 어떤 상황에서 프로그램을 실행하더라도 일정하게 같은 결과를 도출할 수 있다. 프로그램이 동작하는 흐름에서 상태(값)가 변하지 않으면 함수 호출이 각각 상호 간섭 없이 배타적으로 실행되므로 병렬처리할 때 부작용(side-effect)이 거의 없다. 프로세스 혹은 스레드별로 특정 값을 참조하기 위해 락을 걸거나 대기할 필요가 없기 때문이다. 또한 필요한 만큼 함수를 나누어 처리할 수 있도록 스케일업 할 수 있기 때문에 대규모 병렬처리에 강점이 있다.

#### 일급 객체(First-class Citizen)
- 전달인자(Argument)로 전달할 수 있다.
- 동적 프로퍼티 할당이 가능하다
- 변수나 데이터 구조 안에 담을 수 있다.
- 반환 값으로 사용할 수 있다.
- 할당할 때 사용된 이름과 관계없이 고유한 객체로 구별할 수 있다.

함수가 일급 객체가 된다는 말은 함수를 호출하고, 전달하고, 반환하는 동작으로 프로그램을 구현할 수 있다는 뜻이다.

함수형 프로그래밍 언어에서는 모나드(Monad), 펑터(Functor), 맵(Map), 플랫맵(FlatMap), 리듀스(Reduce) 등의 기능을 사용할 수 있다.

#### 스위프트가 함수형 프로그래밍 패러다임을 차용한 의의
- 여러 가지 연산 처리 작업이 동시에 일어나는 프로그램을 만들기 쉽다.
- 멀티 코어 혹은 여러 개의 연산 프로세서를 사용하는 시스템에서 효율적인 프로그램을 만들기 쉽다.
- 상태변화에 따른 부작용에서 자유로워지므로 기능 구현에 초점을 맞추어 설계할 수 있다.

### 1.2.3 프로토콜 지향
**프로토콜 지향 프로그래밍(Protocol-Oriented Programming)**은 참조 타입인 클래스의 인스턴스 보다 값 타입을 더 효율적으로 사용하며, 오류를 줄일 방안이다.

스위프트는 구조체와 열거형에 클래스에서 구현하던 캡슐화, 추상화, 접근 제어 등의 기능을 구현할 수 있다. 그리고 프로토콜에 익스텐션을 활용할 수 있다. 이것으로 참조 타입의 참조 문제에서 조금 더 자유로울 수 있고, 다중상속이 불가능한 한계를 넘을 수 있으며, 더 나은 추상화 매커니즘을 구현할 수 있다.
---- 

# 2. 스위프트 처음 시작하기

## 2.2 콘솔 로그

### 2.2.1 print() 함수
- **print()** 함수는 디버깅 콘솔에 출력하려는 인스턴스의 description 프로퍼티에 해당하는 내용을 출력
- **dump()** 함수는 디버깅 콘솔에 출력하려는 인스턴스의 내부 컨텐츠를 출력

### 2.2.2 문자열 보간법
**문자열 보간법(String Interpolation)**은 문자열 내에 \\(변수나 상수)의 형태로 표기하면 이를 문자열로 치환해서 넣는다.

문자열 보간법으로 문자열을 치환하려면 변수나 상수 타입을 **CustomStringConvertible 프로토콜**을 준수하는 **description 프로퍼티**를 구현한다.

## 2.3 주석(Comment)
- 한 줄 주석: //
- 여러 줄 주석: /\* ... \*/
- 중첩 주석: /\* ... // ... \*/

### 2.3.2 마크업 문법을 활용한 문서화 주석
자동으로 문서화 주석 코드 조각을 생성하려면 요소(상수, 변수, 함수 등)에 커서를 위치한 후 Xcode / Editor / Structure / Add Documentation (**Command-Option-/**)를 선택한다.

- 문서화(마크다운) 주석: /\*\* ... \*/

## 2.4 변수와 상수
프로그램에서 사용되는 데이터는 메모리에 저장하는데, 스위프트에서는 변수와 상수로 표현된다.

### 2.4.1 변수
스위프트에서 변수를 생성하려면   var 키워드를 사용한다.
변수를 생성할 때 데이터 타입을 생략하면 컴파일러가 변수값의 타입을 추론하여 타입을 지정한다.

### 2.4.2 상수
스위프트에서는 let 키워드를 사용해서 상수를 생성한다.
상수를 사용하는 가장 중요한 이유는 가독성이다. 상수로 값을 선언하면 이후 코드에서 값의 변화가 없다는 사실을 주석이나 API 문서 등을 살펴보지 않고서도 직관적으로 알 수 있다.
---- 

# 3. 데이터 타입 기본
데이터 타입은 프로그램 내에서 다뤄지는 데이터의 종류를 뜻한다.
스위프트의 기본 데이터 타입은 모두 구조체를 기반으로 구현되어 있다.
스위프트의 데이터 타입 이름은 대문자 카멜케이스를 사용한다.

## 3.2 Int와 UInt
Int는 +, -  부호를 포함한 정수, UInt는 - 부호를 포함하지 않는 0을 포함한 정수를 저장한다.
Int와 UInt 타입의 최댓값과 최솟값은 각각 max와 min 프로퍼티로 알아볼 수 있다.

## 3.2 Bool
Bool은 불리언 타입으로 true, false 값만 가진다.

## 3.3. Float, Double
Double은 15자리 십진수를 표현할 수 있는 부동소수를 저장한다.
Float는 환경에서 6자리 십진수를 표현할 수 있는 부동소수를 저장한다.

부동소숫값을 콘솔 로그에 표시할 때 10진수로 표현할 수 있는 한계를 넘어서면 지수로 표시된다.

random(in:) 메서드는 임의의 수를 만들 수 있다.
- Double.random(in: 1.5 ... 4.3)
- Float.random(in: -0.5 ... 1.5)
- Int.random(in: -100 ... 100)
- UInt.random(in: 10 ... 100)

## 3.4 Character
Character는 '문자' 하나를 저장한다.
스위프트는 유니코드 9 문자를 사용하므로 유니코드에서 지원하는 모든 언어 및 특수 기호 등을 저장할 수 있다.
```swift
let c: Character = "A"	// Chacter
let s = "A"				// String
```

## 3.5 String
String은 문자열이다.

#### String Properties
- .count, .isEmpty
- .hasPrefix(), .hasSuffix()
- .uppercased(), .lowercased()
- .append()

### 3.5.1 특수문자
- \\n		줄바꿈
- \\		백슬래시
- \\"		큰따옴표
- \\t		탭 문자
- \\0		null 문자, 문자열 끝

#### 3.5.2 특수문자 무시
```swift
print(#"특수"문자" \t 무시 \(100) \n"#)
```

```Console
특수"문자" \t 무시 \(100) \n
```

```swift
print(#"문자열 보간법 \#(100)"#)
```

```Console
문자열 보간법 100 \n
```

## 3.6 Any, AnyObject and nil

**Any**는 스위프트의 모든 데이터 타입을 사용할 수 있다는 뜻이다. 데이터 타입이 Any로 지정되어 있다면 변수와 상수에 어떤 종류의 데이터 타입이든지 할당할 수 있다.

**AnyObject**는 클래스의 타입에 상관없이 인스턴스를 할당할 수 있다.

Any와 AnyObject는 될 수 있으면 사용하지 않는 편이 좋다. Any와 AnyObject로 선언된 변수를 쓰려면 매번 타입 확인 및 변환을 해줘야 해서 불편하고 타입이 맞지 않을 경우 오류를 발생시키기 때문이다. 타입은 될 수 있는 한 명시하는 것이 좋다.

**nil**은 '없을'을 나타내는 스위프트 키워드이다.

값이 nil 인 변수와 상수에 접근하면 잘못된 메모리 접근으로 런타임 오류가 발생한다. 이를 **Null Point Exception**이라고 한다.
---- 

# 4. 데이터 타입 고급

## 4.1 데이터 타입 안심
스위프트는 타입에 굉장히 민감하고 엄격한 언어이다. 스위프트에서 서로 다른 타입으로의 데이터 교환은 반드시 타입캐스팅(**Type-casting**, 형 변환)을 거쳐야 한다.

### 4.1.1 데이터 타입 안심이란
스위프트는 데이터 타입을 안심하고 사용할 수 있는(**Type-safe**) 언어이다. 타입을 안심하고 사용할 수 있다는 말은 그만큼 실수를 줄일 수 있다는 의미다. 타입 오류는 일일이 확인하기도 힘들다. 그렇지만 스위프트는 컴파일 오류로 알려주므로 서로 다른 타입의 값을 할당하는 실수를 줄일 수 있다. 이렇게 스위프트가 컴파일 시 타입 확인하는 것으로 런타임 오류를 피할 수 있다.

### 4.1.2 타입 추론
스위프트는 변수나 상수를 선언할 때 타입을 명시하지 않아도 컴파일러가 할당된 값을 기준으로 변수나 상수의 타입을 결정한다.

```swift
var string = "Hello, World."
var value = 100
```

## 4.2 타입 별칭
스위프트에서는 이미 존재하는 데이터 타입에 임의로 다른 이름(별칭)을 부여할 수 있다.

```swift
typealias Age = Int
typealias Year = Int

let myAge: Age = 18
var myBirth: Year = 2000

myBirth = myBirth + myAge
```
별칭된 타입 이름이 달라도 실제 타입이 같으면 서로 할당하는데 문제가 없다.

## 4.3 튜플
**튜플(Tuple)**은 따로 타입을 지정하지 않은 '저장된 데이터의 묶음'이다.

```swift
var person: (String, Int, Double) = ("John", 18, 182.4)
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")

person.1 = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
```

각 튜플의 요소에 접근하는 인덱스를 이름으로 지정할 수도 있다.
```swift
var person: (name: String, age: Int, height: Double) = ("John", 18, 182.4)
print("Name: \(person.name), Age: \(person.age), Height: \(person.height)")

person.age = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
```

튜플을 타입 별칭으로 선언할 수도 있다.
```swift
typealias PersonTuple = (name: String, age: Int, height: Double)

var person: PersonTuple = ("John", 18, 182.4)
print("Name: \(person.name), Age: \(person.age), Height: \(person.height)")

person.age = 19
person.2 = 184.2
print("Name: \(person.0), Age: \(person.1), Height: \(person.2)")
```

## 4.4 컬렉션형
스위프트에는 데이터를 묶어서 저장하고 관리할 수 있는 컬렉션 타입을 제공한다. 컬렉션 타입에는 **배열(Array)**, **딕셔너리(Dictionary)**, **세트(Set)** 등이 있다.

### 4.4.1 배열
**배열(Array)**은 같은 타입의 데이터를 일렬로 나열한 형태의 컬렉션 타입이다.
배열을 사용할 때는 Array 키워드와 타입 이름의 조합으로 사용한다.

```swift
var names1: Array<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
var names2: [String] = ["Echo", "Foxtrot", "Golf", "Hotel"]

var emptyArray1: [Any] = Array<Any>()
var emptyArray2: [Any] = [Any]()
var emptyArray3: [Any] = []

print(names1[1 ... 3])
print(names2.count)
print(emptyArray1.isEmpty)
```

```Console
4
true
```

배열의 인덱스는 0부터 시작한다. 잘못된 인덱스로 접근하면 익셉션 에러(Exception Error)가 발생한다.

배열의 첫번째 요소는 first, 마지막 요소는 last 프로퍼티를 통해 접근할 수 있다.
```swift
var names = ["Alpha", "Bravo", "Charlie", "Delta"]
print(names.first)
print(names.last)
```

firstIndex(of:) 메서드로 해당 요소의 인덱스를 알아낼 수 있다. 중복된 요소가 있다면 발견된 첫번째 요소의 인덱스를 반환한다.
```swift
var names = ["Alpha", "Bravo", "Charlie", "Delta"]
let index = names.firstIndex(of: "Bravo")
print(index)
```

배열의 맨 뒤에 요소를 추가하려면 append(\_:) 메서드를 사용한다.
```swift
var names = ["Alpha", "Bravo", "Charlie", "Delta"]
names.append("Echo")
print(names)
```

```Console
["Alpha", "Bravo", "Charlie", "Delta", "Echo"]
```

배열의 중간에 요소를 삽입하고 싶다면 insert(\_:at:) 메서드를 사용한다.
```swift
var names = ["Alpha", "Bravo", "Charlie", "Delta"]
names.insert("Beta", at: 1)
print(names)
```

```Console
["Alpha", "Beta", "Bravo", "Charlie", "Delta"]
```

배열의 요소를 삭제할 때는 remove(\_:)를 사용한다.
```swift
var names = ["Alpha", "Bravo", "Charlie", "Delta"]
names.remove(at: 1)
print(names)
```

```Console
["Alpha", "Charlie", "Delta"]
```

### 4.4.2 딕셔너리
**딕셔너리(Dictionary)**는 순서 없이 키페어(key, value)로 구성되는 컬렉션 타입이다.
딕셔너리의 키는 같은 이름을 중복해서 사용할 수 없다.

```swift
var numberForName1: Dictionary<String, Int> = Dictionary<String, Int>()
var numberForName2: Dictionary<String, Int> = [:]
var numberForName3 = Dictionary<String, Int>()

var numberForName4: [String: Int] = [String: Int]()
var numberForName5: [String: Int] = [:]
var numberForName6 = [String: Int]()
```

딕셔너리는 각 값에 키로 접근할 수 있다. 딕셔너리 내부에서 키는 유일해야 하지만 값은 유일하지 않다.
```swift
var numberForName = ["Alpha": 1, "Bravo": 2, "Charlie": 3, "Delta": 4]
print(numberForName["Alpha"])
print(numberForName["Charlie"])
```

```Console
Optional(1)
Optional(3)
```

딕셔너리는 배열과 달리 내부에 없는 키로 접근해도 오류가 발생하지 않고 nil을 반환한다.
```swift
var numberForName = ["Alpha": 1, "Bravo": 2, "Charlie": 3, "Delta": 4]
print(numberForName["Echo"])
```

```Console
nil
```

특정 키에 해당하는 값을 제거하려면 removeValue(forKey:) 메서드를 사용한다.
```swift
var numberForName = ["Alpha": 1, "Bravo": 2, "Charlie": 3, "Delta": 4]
numberForName.removeValue(forKey: "Alpha")
print(numberForName)
```

```Console
["Charlie": 3, "Delta": 4, "Bravo": 2]
```

### 4.4.3 세트
**세트(Set)**는 같은 타입의 데이터를 순서 없이 하나의 묶음으로 저장하는 형태의 컬렉션 타입이다.
배열, 딕셔너리와 달리 세트에는 중복된 값이 존재하지 않는 컬렉션이다.
```swift
var names1: Set<String> = Set<String>()
var names2: Set<String> = []
```

세트의 요소로는 해시 가능한 값이 들어와야 한다. (스위프트 라이브러리의 Hashable 프로토콜을 따른다는 의미다.)
```swift
var names: Set<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
```

세트에 요소를 추가하려면 insert(\_:), 
```swift
var names: Set<String> = ["Alpha", "Bravo", "Charlie", "Delta"]
names.insert("Echo")
print(names)
names.remove("Alpha")
print(names)
```

```Console
["Delta", "Bravo", "Echo", "Alpha", "Charlie"]
["Bravo", "Echo", "Charlie", "Delta"]
```

세트는 내부의 값들이 모두 유일함을 보장하므로 집합관계를 표현하고자 할 때 유용하게 쓰일 수 있고 교집합, 합집합 등을 연산하기에 용이하다.
```swift
var bird: Set<String> = ["Chicken", "Dove", "Goose", "Swan"]
var mammal: Set<String> = ["Bear", "Cat", "Dog", "Lion", "Wolf"]
var animal: Set<String> = bird.union(mammal)
print(animal)

print(bird.isDisjoint(with: mammal))
print(bird.isSubset(of: animal))
print(animal.isSuperset(of: mammal))
print(animal.isSuperset(of: bird))
```

```Console
"Bear", "Dog", "Lion", "Chicken", "Dove", "Cat", "Goose", "Swan", "Wolf"
true
true
true
true
```

### 4.4.4 랜덤, 셔플
컬렉션에서 임의의 요소룰 추출하는 randomElement() 메서드와 컬렉션 요소를 임의로 뒤섞는 shuffle() 메서드가 있다.
```swift
var array = Array<Int>(1 ... 10)
print(array)
print(array.randomElement())
print(array.shuffled())
print(array)
```

```Console
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
Optional(5)
[5, 6, 3, 2, 4, 10, 9, 1, 7, 8]
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

## 4.5 열거형
열거형(Enumeration)은 연관된 항목들을 묶어서 표현할 수 있는 타입이다.
열거형은 정의한 값 외에는 추가/수정이 불가하기 때문에 정해진 값만 저장할 수 있다.

열거형은,
- 제한된 선택지를 주고 싶을 때
- 정해진 값 외에는 입력받고 싶지 않을 때
- 예상된 입력 값이 한정되어 있을 때

스위프트의 열거형은 항목별로 값을 가질 수도, 가지지 않을 수도 있다. 각 항목이 그 자체로 고유의 값이 될 수 있다. 스위프트의 열거형은 각 열거형이 고유의 타입으로 인정되기 때문에 실수로 버그가 일어날 가능성을 없앴다.

열거형의 각 항목이 원시 값(Raw Value)이라는 실제 값을 가질 수도 있고, 연관 값(Associated Value)을 사용하여 값의 묶음으로 구현할 수 있다.

### 4.5.1 기본 열거형
```swift
enum School {
	case primary
	case elementary
	case middle
	case high
	case college
	case university
	case graduate
}
```

```swift
enum School {
	case primary, elementary, middle, high, college, university, graduate
}

var highestEducationLevel: School = .university
highestEducationLevel = .graduate
```

### 4.5.2 원시 값
열거형의 각 항목은 자체로도 하나의 값이지만 항목의 원시 값(Raw Value)도 가질 수 있다. 즉, 특정 타입으로 지정된 값을 가질 수 있다.

```swift
enum School: String {
	case primary = "유치원"
	case elementary = "초등학교"
	case middle = "중학교"
	case high = "고등학교"
	case college = "대학"
	case university = "대학교"
	case graduate = "대학원"
}

let highestEducationLevel = School.university
print("최종학력: \(highestEducationLevel.rawValue)")
```

```Console
최종학력: 대학교
```

```swift
enum WeekDays: Character {
	case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")
```

```Console
오늘은 금요일입니다.
```

```swift
enum Numbers: Int {
	
	case zero
	case one
	case two
	case ten = 10
}

print("\(Numbers.zero.rawValue), \(Numbers.one.rawValue), \(Numbers.two.rawValue), \(Numbers.ten.rawValue)")
```

```swift
0, 1, 2, 10
```

올바르지 않은 원시 값을 통해 생성하려고 한다면 nil을 반환한다. 이는 실패 가능한 이니셜라이저 기능이다.

### 4.5.3 연관 값
```swift
enum MainDish {
	case pasta(taste: String)
	case pizza(dough: String, topping: String)
	case chicken(withSauce: Bool)
	case rice
}

var dinner = MainDish.pasta(taste: "Cream")
print(dinner)

dinner = .pizza(dough: "CheeseCrust", topping: "Bacon")
print(dinner)

dinner = .chicken(withSauce: true)
print(dinner)

dinner = .rice
print(dinner)
```

```Console
pasta(taste: "Cream")
pizza(dough: "CheeseCrust", topping: "Bacon")
chicken(withSauce: true)
rice
```

```swift
enum PastaTaste { case cream, tomato }
enum PizzaDough { case cheesecrust, thin, original }
enum PizzaTopping { case pepperoni, cheese, bacon }

enum MainDish {
	case pasta(taste: PastaTaste)
	case pizza(dough: PizzaDough, topping: PizzaTopping)
	case chicken(withSauce: Bool)
	case rice
}

var dinner = MainDish.pasta(taste: PastaTaste.tomato)
print(dinner)

dinner = .pizza(dough: PizzaDough.cheesecrust, topping: PizzaTopping.bacon)
print(dinner)

dinner = .chicken(withSauce: true)
print(dinner)

dinner = .rice
print(dinner)
```

```Console
pasta(taste: __lldb_expr_25.PastaTaste.tomato)
pizza(dough: __lldb_expr_25.PizzaDough.cheesecrust, topping: __lldb_expr_25.PizzaTopping.bacon)
chicken(withSauce: true)
rice
```

### 4.5.4 항목 순회
