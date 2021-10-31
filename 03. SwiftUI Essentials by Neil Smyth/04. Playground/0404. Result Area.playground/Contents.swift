import Foundation

var x = 10

for i in 1 ... 20 {
    
    x -= 1
    
    let y = i * x
    print("\(i) * \(x) = \(y)")
}

/**
 ## 4.4 결과 보기
 플레이그라운드의 실행에서 print()로 출력한 로그는  Console Area에 표시된다.
 플레이그라운드의 실행 결과는 Result Area에 Quick Look 기능으로도 표시된다.
 */
