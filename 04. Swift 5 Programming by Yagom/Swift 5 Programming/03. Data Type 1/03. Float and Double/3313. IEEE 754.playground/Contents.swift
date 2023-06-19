import Foundation

var numberF = Float(-4.5)
print(type(of: numberF))
print(numberF)
print(String(numberF.bitPattern, radix: 2).first)
print(String(numberF.bitPattern, radix: 2))
print(String(numberF.bitPattern, radix: 2))
print()

var numberD = -4.5
print(type(of: numberD))
print(numberD)
print(String(numberD.bitPattern, radix: 2))
print()

/**
 * #### IEEE 754 Standard for Floating-point Arithmetic
 * Float Value = Significand * (1 + Fraction.radix) ** Exponent
 * Significand: 1 Bit - 0(+), 1(-)
 * Exponent: 8 Bit - e-128 ~ +127, Bias 127
 * Fraction: 23 Bit - 1. + 6 Digit
 *
 * Double Value = Significand * (1 + Fraction.radix) ** Exponent
 * Significand: 1 Bit - 0(+), 1(-)
 * Exponent: 11 Bit - e-1024 ~ +1023, Bias 1023
 * Fraction: 52 Bit - 1. + 15 Digit
 */

//1 2 4 8 16 32 64 128 256 512 1024
//1111 1111
