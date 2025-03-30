//
//  SceneDelegate.swift
//  GithubTCA
//
//  Created by Mk on 3/10/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let _ = (scene as? UIWindowScene) else { return }
	}
	
	func sceneDidDisconnect(_ scene: UIScene) {
		// ...
	}
	
	func sceneDidBecomeActive(_ scene: UIScene) {
		// ...
	}
	
	func sceneWillResignActive(_ scene: UIScene) {
		// ...
	}
	
	func sceneWillEnterForeground(_ scene: UIScene) {
		// ...
	}
	
	func sceneDidEnterBackground(_ scene: UIScene) {
		// ...
	}
	
	func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
		guard let url = URLContexts.first?.url else { return }
		if url.absoluteString.starts(with: "githubtca://oauth-callback") {
			guard let components = URLComponents(url: url, resolvingAgainstBaseURL: true),
				  let queryItems = components.queryItems,
				  let code = queryItems.first(where: { $0.name == "code" })?.value else {
				print("Failed to extract code from URL")
				return
			}
			print("Received GitHub OAuth Code: \(code)")
			setGithubToken(code)
		}
	}
}

extension SceneDelegate {
	func setGithubToken(_ code: String) {
		guard let viewController = window?.rootViewController as? ViewController else {
			print("Failed to get ViewController")
			return
		}
		viewController.handleGithubToken(code)
	}
}
