/**
### 2.3.2 마크업 문법을 활용한 문서화 주석
*/

import Foundation

/// 마크업 형식이 적용된 퀵헬프
func exec_2321() {
    
    print("Markdown")
}

/// Returns the magnitude of a vector in three dimensions
/// from the given components.
///
/// - Parameters:
///     - x: The *x* component of the vector.
///     - y: The *y* component of the vector.
///     - z: The *z* component of the vector.
func magnitude3D(x: Double, y: Double, z: Double) -> Double {
    
    return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
}
