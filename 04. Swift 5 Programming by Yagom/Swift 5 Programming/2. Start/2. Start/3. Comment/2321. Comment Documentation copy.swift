import Foundation

func exec_2321() {
    
    print("Comment Documentation")
}

/// 2.3.2.1 마크업 형식이 적용된 퀵헬프
/// Returns the magnitude of a vector in three dimensions
/// from the given components.
///
/// - Parameters:
///     - x: The *x* component of the vector.
///     - y: The *y* component of the vector.
///     - z: The *z* component of the vector.
///
/// - Returns:
///     - result: Double
func magnitude3D(x: Double, y: Double, z: Double) -> Double {
    
    return sqrt(pow(x, 2) + pow(y, 2) + pow(z, 2))
}

/**
 https://developer.apple.com/library/archive/documentation/Xcode/Reference/xcode\_markup\_formatting\_ref/
 */
