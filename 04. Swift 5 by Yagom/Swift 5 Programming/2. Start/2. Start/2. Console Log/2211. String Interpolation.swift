import Foundation

func exec_() {
    
    let greeting: String = "Hello"
    print("\(greeting), World.")
}

/**
 ### 2.2.2 문자열 보간법
 **문자열 보간법(String Interpolation)**은 문자열 내에 \(변수나 상수)의 형태로 표기하면 이를 문자열로 치환해서 넣는다.
 - 문자열 보간법으로 문자열을 치환하려면 변수나 상수 타입을 **CustomStringConvertible 프로토콜**을 준수하는 **description 프로퍼티**를 구현한다.
 */
