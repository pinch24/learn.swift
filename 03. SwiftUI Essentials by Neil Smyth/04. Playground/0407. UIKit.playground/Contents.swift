import UIKit

let label = UILabel(frame: CGRect(x: 8, y: 8, width: 144, height: 44))
label.text = "Hello, world."
label.font = UIFont(name: "Times", size: 14)
label.textAlignment = .center
label.textColor = .systemGray
label.backgroundColor = .systemIndigo

/**
 ## 4.7 플레이그라운드에서 UIKit으로 작업하기
 Result Area에서 Quick Look 버튼을 누르면 각 단계별로 UILabel의 변화를 확인할 수 있다.
 */
