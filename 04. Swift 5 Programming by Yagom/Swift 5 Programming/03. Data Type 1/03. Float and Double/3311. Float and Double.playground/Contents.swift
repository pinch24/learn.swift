var floatValue: Float = 1234567890.1
var doubleValue: Double = 1234567890.1

print("Float Value: \(floatValue)")
print("Double Value: \(doubleValue)")
print()

floatValue = 123456.1
print("Edited Float Value: \(floatValue)")
floatValue = 1234567.1
print("Edited Float Value: \(floatValue)")
floatValue = 12345678.1
print("Edited Float Value: \(floatValue)")
floatValue = 123456789.1
print("Edited Float Value: \(floatValue)")
print()

doubleValue = 123456789012345.1
print("Edited Double Value: \(doubleValue)")
doubleValue = 1234567890123456.1
print("Edited Double Value: \(doubleValue)")
doubleValue = 12345678901234567.1
print("Edited Double Value: \(doubleValue)")
print()

/**
 * ## 3.3. Float, Double
 * Float는 6자리 십진수를 표현할 수 있는 부동소수를 저장한다.
 * Double은 15자리 십진수를 표현할 수 있는 부동소수를 저장한다.
 *
 * 부동소숫값을 콘솔 로그에 표시할 때 10진수로 표현할 수 있는 한계를 넘어서면 지수로 표시된다.
 */
