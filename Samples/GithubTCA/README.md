# GithubTCA

## 개발 환경
- Tool: Xcode 16
- Interface: Storyboard
- Swift Language: Swift 6
- Storage: Core Data
- Package Dependeny: TCA(The Composable Architecture)
- Deployment Target : iOS 15+

## 구현 방법
- 프로젝트 네비게이션
  - 이전까지의 Group 구성이 아닌  Xcode 16의 기본 설정인 Folder로 구성했다.
  (Git 관리에서 xcodeproj 파일의 수정 빈도가 적어서)
  - 파일 중 Key.plist에는 Github API 인증에 필요한 정보입니다. 보안 코드이기 때문에 .gitignore에 포함시켜두는 것이 필요하다.

- 아키텍처
  - 앱 전체 아키텍처는 TCA를 사용했다.
  - MVI 혹은 Hexagonal 등의 아키텍처로 작업한 코드를 수정할 때면 스무 고개하는 기분이 드는데, TCA는 SSOT(Single Source of Truth)로 모든 데이터 요소가 하나의 참조점에서 제어하고 편집하도록 강제되어있다.
  - 개발 성향은 First-party 기술을 선호하는 쪽이라 표준 라이브러리 이외의 사용을 선호하지는 않지만, SwiftUI 기반의 MVVM이 아닌 다른 아키텍처를 사용해야 한다면 TCA를 추천한다.

- Github API
  - Github Search API의 스펙에 "Authorization: Bearer <YOUR-TOKEN>" 옵션이 있어 Github 액세스 토큰 생성 과정을 추가했다.
  [GitHub 앱에 대한 사용자 액세스 토큰 생성](https://docs.github.com/ko/apps/creating-github-apps/authenticating-with-a-github-app/generating-a-user-access-token-for-a-github-app)
⠀
## 폴더 구조
GithubTCA/
├── Features/								TCA 기능 구현  
│   ├── CoreDataClient.swift					외부 의존성: Core Data  
│   ├── GithubClient.swift						외부 의존성: Github API  
│   ├── GithubSearchFeature.swift				메인 기능  
├── AppDelegate							    X  
├── Assets.xcassets							X  
├── GithubTCA.xcdatamodelId					Core Data 모델  
├── Info.plist								URL Type 설정 추가  
├── Key.plist								Github 인증에 필요한 Client 정보  
├── LaunchScreen.stroyboard					X  
├── Main.stroyboard							메인 UI  
├── SceneDelegate.swift						Github 인증 콜백 딥링크 처리 추가  
└──  ViewController.swift					메인 뷰 컨트롤러  

GithubTCATests/  
├── GithubSearchFeatureTests.swift			TCA Tests 추가  
└── GithubTCATests.swift					X  

GithubTCAUITests/  
├── GithubTCAUITestsTests.swift				X  
└── GithubTCAUITestsLaunchTests.swift		X

## 테스트
- 이 프로젝트는 TDD에도, TCA의 테스트에도 적합한 구성이 아니다.
- 간단한 기능을 빠르게 구현하는데는 코드를 Unit 단위 보다 Context 단위로 구현하는 것이 빨라서 이렇게 구성했다.
- 유닛 테스트를 하려면 TCA Reducer에서 .searchAPIQuery 액션은 좀 더 작은 단위로 기능을 나누어야 하고, 테스트 호출과 응답에 적합하도록 각 액션에 응답 액션을 추가하는 구성이 필요하다.
⠀
## 추가 개선 사항
* 앱을 시작할 때 마다 Github API 인증을 필요로 해서 KeyChain 저장 기능이 필요하다.
* Github OAuth Token 관리 기능도 없습니다. 만료되면 앱을 다시 실행해야 한다.
* 로딩 인디케이터나 풀-다운 리프레시와 같은 UI 기능은 없다. Local 탭에서 즐겨찾기를 해제하면 API 탭으로 이동하고 와야 테이블뷰에서 삭제된다.

## 결론
* UIKit은 TCA와 어울리지 않는 조합인 것 같다. TCA를 사용하는 이유도 성능 보다는 관리를 위한 선택인데, ViewController를 구현하는데 SwiftUi에 비해 코드 양이 2배 이상 많다면 TCA 보다는 ViewModel을 사용하는 것이 더 나을 것이다. 특히 상태 변경을 위해 viewStore.publisher이라는 Combine을 사용하는데, 성능 면에서도 좋지않아 UIKit에서 TCA의 사용은 말리고 싶다.
