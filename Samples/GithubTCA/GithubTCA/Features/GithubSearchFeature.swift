//
//  GithubSearchFeature.swift
//  GithubTCA
//
//  Created by Mk on 3/10/25.
//

import ComposableArchitecture

@Reducer
struct GithubSearchFeature {
	struct State: Equatable {
		var users: [GithubUser] = []
		var groupedUsers: [String: [GithubUser]] = [:]
		var isLogin: Bool = false
		var mode = Mode.API
	}
	
	enum Action {
		/// UI
		case setMode(Mode)
		case updateUsers([GithubUser])
		
		/// API
		case searchAPIQuery(String)
		
		/// LOCAL
		case fetchLocalData(String)
		case saveUser(GithubUser)
		case deleteUser(Int)
		
		/// Github Login
		case openGithubAuth
		case fetchToken(String)
		case setIsLogin(Bool)
	}
	
	@Dependency(\.githubClient) var githubClient
	@Dependency(\.coreDataClient) var coreDataClient
	
	var body: some ReducerOf<Self> {
		Reduce { state, action in
			switch action {
			case .setMode(let mode):
				state.mode = mode
				return .run { send in
					await send(.updateUsers([]))
				}
				
			case .updateUsers(let users):
				state.users = users
				if state.mode == .LOCAL {
					state.groupedUsers = Dictionary(grouping: state.users) { user in
						String(user.login.prefix(1)).uppercased()
					}
				}
				return .none
				
			case .searchAPIQuery(let query):
				return .run { send in
					let token = await githubClient.getToken()
					if let token, token != "" {
						do {
							let result = try await githubClient.searchUsers(query)
							switch result {
							case .success(let users):
								/// Filter - login contains query
								let filteredUsers = users.filter { $0.login.contains(query) }
								/// Check - Local Stored Data
								let localUsers = await coreDataClient.fetchUsers("")
								let updatedUsers = filteredUsers.map { user -> GithubUser in
									var updatedUser = user
									if localUsers.contains(where: { $0.id == user.id }) {
										updatedUser.isFavorite = true
									}
									return updatedUser
								}
								/// Data Update
								await send(.updateUsers(updatedUsers))
							case .failure(let error):
								print("API - searchAPIQuery: Result Error: \(error)")
							}
						} catch {
							print("API - searchAPIQuery: Error: \(error)")
						}
					}
				}
				
			case .fetchLocalData(let query):
				return .run { send in
					let users = await coreDataClient.fetchUsers(query)
					await send(.updateUsers(users))
				}
				
			case .saveUser(let user):
				return .run { send in
					await coreDataClient.saveUser(user)
				}
				
			case .deleteUser(let userId):
				return .run { send in
					await coreDataClient.deleteUser(userId)
				}
				
			case .openGithubAuth:
				return .run { send in
					try await githubClient.openGithubLogin()
				}
				
			case .fetchToken(let code):
				return .run { send in
					do {
						let result = try await githubClient.fetchToken(code)
						switch result {
						case .success(_):
							await send(.setIsLogin(true))
							break
						case .failure(_):
							await send(.setIsLogin(false))
						}
					} catch {
						print("API - FetchToken: Error: \(error)")
					}
				}
				
			case .setIsLogin(let isLogin):
				state.isLogin = isLogin
				return .none
			}
		}
	}
}

enum Mode {
	case API
	case LOCAL
}
