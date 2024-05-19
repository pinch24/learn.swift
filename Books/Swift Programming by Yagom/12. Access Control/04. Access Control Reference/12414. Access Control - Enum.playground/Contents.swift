private typealias PointValue = Int

#if DEBUG
enum Point: PointValue {
    case x, y
}
// Point는 interanal이므로 private인 PointValue를 사용할 수 없다.
#endif

/**
 * #### 12-7 열거형의 접근수준
 * 열거형의 각 case의 접근수준은 열거형 타입의 접근수준을 따른다.
 * 열거형의 원시 값 타입으로 열거형 타입의 접근수준보다 낮은 접근수준을 지정할 수는 없다.
 */
