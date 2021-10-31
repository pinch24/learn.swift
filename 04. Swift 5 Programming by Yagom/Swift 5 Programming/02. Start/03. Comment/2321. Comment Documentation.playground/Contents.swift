import Foundation

print("Comment Documentation")

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
