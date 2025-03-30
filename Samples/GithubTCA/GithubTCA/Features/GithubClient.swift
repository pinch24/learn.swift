//
//  GithubClient.swift
//  GithubTCA
//
//  Created by Mk on 3/10/25.
//

import ComposableArchitecture
import UIKit

@MainActor
class GithubClientActor {
	static let shared = GithubClientActor()
	
	var clientID: String
	var clientSecret: String
	var redirectURI: String
	var scope: String
	var token: String?
	
	init() {
		if let url = Bundle.main.url(forResource: "Key", withExtension: "plist"),
		   let data = try? Data(contentsOf: url),
		   let secrets = try? PropertyListSerialization.propertyList(from: data, format: nil) as? [String: Any] {
			self.clientID = secrets["clientID"] as? String ?? ""
			self.clientSecret = secrets["clientSecret"] as? String ?? ""
			self.redirectURI = secrets["redirectURI"] as? String ?? ""
			self.scope = secrets["scope"] as? String ?? ""
		} else {
			self.clientID = ""
			self.clientSecret = ""
			self.redirectURI = ""
			self.scope = ""
		}
	}
	
	func searchUsers(query: String) async throws -> Result<[GithubUser], Error> {
		guard let token = token else {
			throw NSError(domain: "GithubClient", code: 401, userInfo: [NSLocalizedDescriptionKey: "No Token"])
		}
		
		do {
			var request = URLRequest(url: URL(string: "https://api.github.com/search/users?q=\(query)")!)
			request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
			let (data, _) = try await URLSession.shared.data(for: request)
			let response = try JSONDecoder().decode(GithubUserSearchResponse.self, from: data)
			return .success(response.items)
		} catch {
			return .failure(error)
		}
	}
	
	func getToken() -> String? {
		return token
	}
	
	func fetchToken(_ code: String) async throws -> Result<String, Error> {
		do {
			var request = URLRequest(url: URL(string: "https://github.com/login/oauth/access_token?client_id=\(clientID)&client_secret=\(clientSecret)&code=\(code)")!)
			request.httpMethod = "POST"
			request.setValue("application/json", forHTTPHeaderField: "Accept")
			let (data, _) = try await URLSession.shared.data(for: request)
			let githubToken = try JSONDecoder().decode(GithubToken.self, from: data)
			token = githubToken.accessToken
			return .success(token ?? "")
		} catch {
			print("Request: Error: \(error)")
			return .failure(error)
		}
	}
	
	func openGithubLogin() async throws {
		let authURL = "https://github.com/login/oauth/authorize?client_id=\(clientID)&redirect_uri=\(redirectURI)&scope=\(scope)"
		if let url = URL(string: authURL) {
			await UIApplication.shared.open(url)
		}
	}
}

struct GithubClient {
	let actor: GithubClientActor
	
	var searchUsers: @Sendable (String) async throws -> Result<[GithubUser], Error>
	var getToken: @Sendable () async -> String?
	var fetchToken: @Sendable (String) async throws -> Result<String, Error>
	var openGithubLogin: @Sendable () async throws -> Void
}

extension GithubClient: DependencyKey {
	static let liveValue = GithubClient(
		actor: GithubClientActor(),
		searchUsers: { query in
			return try await GithubClientActor.shared.searchUsers(query: query)
		},
		getToken: {
			return GithubClientActor.shared.getToken()
		},
		fetchToken: { code in
			return try await GithubClientActor.shared.fetchToken(code)
		},
		openGithubLogin: {
			return try await GithubClientActor.shared.openGithubLogin()
		}
	)
}

extension DependencyValues {
	var githubClient: GithubClient {
		get { self[GithubClient.self] }
		set { self[GithubClient.self] = newValue }
	}
}

struct GithubUserSearchResponse: Decodable {
	var totalCount: Int
	var incompleteResults: Bool
	var items: [GithubUser]
	
	enum CodingKeys: String, CodingKey {
		case totalCount = "total_count"
		case incompleteResults = "incomplete_results"
		case items
	}
}

struct GithubUser: Equatable, Decodable {
	var login: String
	var id: Int
	var nodeId: String?
	var avatarUrl: String?
	var gravatarId: String?
	var url: String?
	var htmlUrl: String?
	var followersUrl: String?
	var subscriptionsUrl: String?
	var organizationsUrl: String?
	var reposUrl: String?
	var receivedEventsUrl: String?
	var type: String?
	var score: Int?
	var followingUrl: String?
	var gistsUrl: String?
	var starredUrl: String?
	var eventsUrl: String?
	var siteAdmin: Bool?
	var isFavorite: Bool?	/// Additional
	
	enum CodingKeys: String, CodingKey {
		case login
		case id
		case nodeId = "node_id"
		case avatarUrl = "avatar_url"
		case gravatarId = "gravatar_id"
		case url
		case htmlUrl = "html_url"
		case followersUrl = "followers_url"
		case subscriptionsUrl = "subscriptions_url"
		case organizationsUrl = "organizations_url"
		case reposUrl = "repos_url"
		case receivedEventsUrl = "received_events_url"
		case type
		case score
		case followingUrl = "following_url"
		case gistsUrl = "gists_url"
		case starredUrl = "starred_url"
		case eventsUrl = "events_url"
		case siteAdmin = "site_admin"
	}
}

struct GithubToken: Decodable {
	var accessToken: String
	var expiresIn: Int
	var refreshToken: String
	var refreshTokenExpiresIn: Int
	var scope: String
	var tokenType: String
	
	enum CodingKeys: String, CodingKey {
		case accessToken = "access_token"
		case expiresIn = "expires_in"
		case refreshToken = "refresh_token"
		case refreshTokenExpiresIn = "refresh_token_expires_in"
		case scope
		case tokenType = "token_type"
	}
}
