//
//  GithubSearchFeatureTests.swift
//  GithubTCATests
//
//  Created by Mk on 3/12/25.
//

import ComposableArchitecture
import Testing

@testable import GithubTCA

@MainActor
struct GithubSearchFeatureTests {
	@Test
	func testSetMode() async throws {
		/// 테스트: UI 액션
		/// 설명: setMode 액션을 통해 SearchGithubFeature의 모드가 API와 LOCAL 상태로 변경되는지 확인한다.
		let store = TestStore(initialState: GithubSearchFeature.State(), reducer: { GithubSearchFeature() })
		store.exhaustivity = .off
		
		await store.send(.setMode(.LOCAL)) {
			$0.mode = .LOCAL
		}
		await store.send(.setMode(.API)) {
			$0.mode = .API
		}
		await store.finish()
	}
	
	@Test
	func testSearchAPIQuery() async {
		/// 테스트: API 쿼리
		/// 설명: .searchAPIQuery 액션을 통해 API를 호출하고 결과를 올바르게 처리하는지 확인한다.
		/// API 호출에는 OAuth Token이 필요하기에 GithubClient를 임의의 데이터로 지정하여 기능만 확인한다.
		let store = TestStore(
			initialState: GithubSearchFeature.State(),
			reducer: { GithubSearchFeature() },
			withDependencies: {
				$0.githubClient.searchUsers = { _ in
					return .success([
						GithubUser(login: "Tester_01", id: 1),
						GithubUser(login: "Tester_02", id: 2),
						GithubUser(login: "Tester_03", id: 3),
						GithubUser(login: "Tester_04", id: 4),
					])
				}
			}
		)
		store.exhaustivity = .off
		
		/// .searchAPIQuery 액션으로 위에서 GithubClient에 외부 의존성으로 지정한 Mock 데이터를 가져온다.
		await store.send(.searchAPIQuery("Test"))
		
		/// .updateUsers 액션으로인한 상태 변경이 정상적으로 이루어지는지 확인한다.
		await store.send(.updateUsers([
			GithubUser(login: "Tester_01", id: 1, isFavorite: true),
			GithubUser(login: "Tester_02", id: 2, isFavorite: false)
		])) {
			$0.mode = .API
			$0.users = [
				GithubUser(login: "Tester_01", id: 1, isFavorite: true),
				GithubUser(login: "Tester_02", id: 2, isFavorite: false)
			]
		}
	}
	
	/// Test - Failed
	@Test
	func testCallGithubAuth() async {
		/// 테스트: Github 인증 호출
		/// 설명: openGithubAuth 액션을 호출하여 웹브라우저로 Github 인증을 시작하는지 확인한다.
		/// 외부 동작에 의존하는 테스트여서 실제 동작으로 정상처리하기가 어렵다.
		/// iOS 시뮬레이터에서 Safari 웹 브라우저에 Github Auth 화면이 나타나는 것으로 대신한다.
		let store = TestStore(initialState: GithubSearchFeature.State(), reducer: { GithubSearchFeature() })
		await store.send(.openGithubAuth)
		await store.finish()
	}
}

