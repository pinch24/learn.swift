import Foundation

var x = 10

for i in 1 ... 20 {
    
    x -= 1
    
    let y = i * x
    print("\(i) * \(x) = \(y)")
}
