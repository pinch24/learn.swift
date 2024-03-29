let intValue: Int = 1
let resultValue1: Int = intValue << 3 + 5	// (intValue << 3) + 5
let resultValue2: Int = 1 * 3 + 5			// (1 * 3) + 5

print(resultValue1)
print(resultValue2)

/**
 * ## 5.2 연산자 우선순위와 결합방향
 * 연산자 **우선순위(Precedence)**가 높은 연산자는 우선순위가 낮은 연산자 보다 먼저 실행된다.
 * 사용자 정의 연산자 또한 이 규칙에 따라 실행 순서가 결정된다.
 *
 * 연산자가 연산하는 **결합방향(Associativity)**은 같은 우선순위에 있는 연산자끼리 나열되었을 때 어느 방향부터 그룹지을 것인지 나타낸다.
 * 1 + 2 + 3 + 4 수식의 연산자 +는 모두 같은 우선순위를 가지며 결합방향은 왼쪽이기 때문에 (((1 + 2) + 3) + 4) 처럼 왼쪽으로 그룹이 묶인다. 그래서 1 + 2가 가장 먼저 연산이 되고 이 결과가 3과 연산이 되고 그 결과가 다시 4와 연산이 된다. 만약 + 연산자의 결합방향이 오른쪽이었다면 (1 + 2 + (3 + 4))) 처럼 묶여서 연산이 된다.
 * 스위프트의 연산자 우선순위는 절대치가 아닌 상대적인 수치이다.
 *
 * 연산자 우선순위가 높을수록 같은 라인의 연산자 중 먼저 처리된다.
 *
 * C 계열 언어(C/C++, Objective-C)와 스위프트의 연산자 우선순위나 결합방향은 완전히 같지는 않다. 기존의 C 계열 언어을 스위프트로 변환할 때 주의해야 한다.
 *
 * ### 5.2.11 연산자 우선순위
 * Precedence					Associativity			Operator
 * ----------------------------------------------------------------
 * DefaultPrecedence			none					(, )
 * BitwiseShiftPrecedence			none					>>, <<
 * MultiplicationPrecedence		left to right				*, /, %
 * AdditionPrecedence			left to right				+, -, |, ^
 * RangeFormationPrecedence		none					..., ..<
 * CastingPrecedence			left to right				is, as, as?, as!
 * NilCoalescingPrecedence		right to left				??
 * ComparisonPrecedence		none					<, <=, >, >=, ==, != ...
 * LogicalConjunctionPrecedence	left to right				&&, .&
 * LogicalDisjunctionPrecedence	left to right				||, .|, .^
 * TernaryPrecedence			right to left				? :
 * AssignmentPrecedence		right to left				=, +=, -=, *=, /=, %= ...
 * FunctionArrowPrecedence		right to left				->
 * ----------------------------------------------------------------
 *
 * #### 5-5 연산자 우선순위에 따른 처리순서
 */
