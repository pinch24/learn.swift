import Foundation

var numberF = Float(-4.5)	// 1 100.1 --> 1 1.001 e-2
print("Value:       \(numberF)")
print("Bit Pattern: \(String(numberF.bitPattern, radix: 2))")
print("Significand: \(String(numberF.bitPattern, radix: 2).prefix(1))")
print("Exponent:     \(String(numberF.bitPattern, radix: 2).prefix(9).suffix(8))")
print("Fraction:             \(String(numberF.bitPattern, radix: 2).suffix(23))")
print()

var numberD = -3.375		// 1 11.011 --> 1 1.1011 e-1
print("Value:       \(numberD)")
print("Bit Pattern: \(String(numberD.bitPattern, radix: 2))")
print("Significand: \(String(numberD.bitPattern, radix: 2).prefix(1))")
print("Exponent:     \(String(numberD.bitPattern, radix: 2).prefix(12).suffix(11))")
print("Fraction:                \(String(numberD.bitPattern, radix: 2).suffix(52))")
print()

/**
 * #### IEEE 754 Standard for Floating-point Arithmetic
 * Float Value = Significand * (1 + Fraction.radix) ** Exponent
 * Significand: 1 Bit - 0(+), 1(-)
 * Exponent: 8 Bit - Bias 127, 0: +127, 127: 254, -127: 0, -128: .inf, .nan
 * Fraction: 23 Bit - 1. + 6 Digit
 *
 * Double Value = Significand * (1 + Fraction.radix) ** Exponent
 * Significand: 1 Bit - 0(+), 1(-)
 * Exponent: 11 Bit - Bias 1023, 0: +1023, +1023: 2046, -1023: 0, -1024: .inf, .nan
 * Fraction: 52 Bit - 1. + 15 Digit
 *
 * 256 128 64 32 16 8 4 2 1 . 1/2 1/4 1/8 1/16 1/32 1/64 1/128 1/256
 * 256 128 64 32 16 8 4 2 1 . 0.5 0.25 0.125 0.0625 0.03125 0.015625 0.00390625
 */
