# 2. 스위프트 처음 시작하기

## 2.2 콘솔 로그 - edited

### 2.2.1 print() 함수
* **print()** 함수는 디버깅 콘솔에 출력하려는 인스턴스의 description 프로퍼티에 해당하는 내용을 출력
* **dump()** 함수는 디버깅 콘솔에 출력하려는 인스턴스의 내부 컨텐츠를 출력

### 2.2.2 문자열 보간법
**문자열 보간법(String Interpolation)**은 문자열 내에 \(변수나 상수)의 형태로 표기하면 이를 문자열로 치환해서 넣는다.

문자열 보간법으로 문자열을 치환하려면 변수나 상수 타입을 **CustomStringConvertible 프로토콜**을 준수하는 **description 프로퍼티**를 구현한다.

## 2.3 주석(Comment)
* 한 줄 주석: //
* 여러 줄 주석: /\* ... \*/
* 중첩 주석: /\* ... // ... \*/

### 2.3.2 마크업 문법을 활용한 문서화 주석
자동으로 문서화 주석 코드 조각을 생성하려면 요소(상수, 변수, 함수 등)에 커서를 위치한 후 Xcode / Editor / Structure / Add Documentation (**Command-Option-/**)를 선택한다.

* 문서화(마크다운) 주석: /\*\* ... \*/

#### Apple Markup Formatting Reference
[https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode\_markup\_formatting\_ref/][1]

## 2.4 변수와 상수
프로그램에서 사용되는 데이터는 메모리에 저장하는데, 스위프트에서는 변수와 상수로 표현된다.

### 2.4.1 변수
스위프트에서 변수를 생성하려면   var 키워드를 사용한다.
변수를 생성할 때 데이터 타입을 생략하면 컴파일러가 변수값의 타입을 추론하여 타입을 지정한다.

### 2.4.2 상수
## 스위프트에서는 let 키워드를 사용해서 상수를 생성한다.
상수를 사용하는 가장 중요한 이유는 가독성이다. 상수로 값을 선언하면 이후 코드에서 값의 변화가 없다는 사실을 주석이나 API 문서 등을 살펴보지 않고서도 직관적으로 알 수 있다.

[1]:	https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode_markup_formatting_ref/