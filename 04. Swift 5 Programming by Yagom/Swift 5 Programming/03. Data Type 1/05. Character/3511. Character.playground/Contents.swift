import Foundation

let bigA: Character = "A"
let check: Character = "✓"
let dot: Character = "•"
let heart: Character = "🧡"
let scream: Character = "😱"
let code: Character = "\u{0061}"
print(bigA, check, dot, heart, scream, code)

let a = Character("a")
let b = "b"
let s = "😱"
print(type(of: a))
print(type(of: b))
print(type(of: s))

/**
 * ## 3.4 Character
 * Character는 '문자' 하나를 저장한다.
 * 스위프트는 유니코드 버전 9.0 문자를 사용하므로 유니코드에서 지원하는 모든 언어 및 특수 기호 등을 저장할 수 있다.
 * let c: Character = "A"		// Chacter
 * let s = "A"				// String
 */
