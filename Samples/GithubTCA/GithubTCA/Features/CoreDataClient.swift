//
//  CoreDataClient.swift
//  GithubTCA
//
//  Created by Mk on 3/10/25.
//

import ComposableArchitecture
import CoreData

struct CoreDataClient {
	var fetchUsers: @Sendable (String) async -> [GithubUser]
	var saveUser: @Sendable (GithubUser) async -> Void
	var deleteUser: @Sendable (Int) async -> Void
}

extension CoreDataClient: DependencyKey {
	static let liveValue = CoreDataClient(
		fetchUsers: { query in
			await MainActor.run {
				let context = CoreDataStack.shared.persistentContainer.viewContext
				let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "LocalUser")
				if query.isEmpty == false {
					fetchRequest.predicate = NSPredicate(format: "login CONTAINS[cd] %@", query)
				}
				do {
					let list = try context.fetch(fetchRequest)
					return list.map { user in
						GithubUser(
							login: user.value(forKey: "login") as! String,
							id: user.value(forKey: "id") as! Int,
							nodeId: user.value(forKey: "nodeId") as? String,
							avatarUrl: user.value(forKey: "avatarUrl") as? String,
							gravatarId: user.value(forKey: "gravatarId") as? String,
							url: user.value(forKey: "url") as? String,
							htmlUrl: user.value(forKey: "htmlUrl") as? String,
							followersUrl: user.value(forKey: "followersUrl") as? String,
							subscriptionsUrl: user.value(forKey: "subscriptionsUrl") as? String,
							organizationsUrl: user.value(forKey: "organizationsUrl") as? String,
							reposUrl: user.value(forKey: "reposUrl") as? String,
							receivedEventsUrl: user.value(forKey: "receivedEventsUrl") as? String,
							type: user.value(forKey: "type") as? String,
							score: user.value(forKey: "score") as? Int,
							followingUrl: user.value(forKey: "followingUrl") as? String,
							gistsUrl: user.value(forKey: "gistsUrl") as? String,
							starredUrl: user.value(forKey: "starredUrl") as? String,
							eventsUrl: user.value(forKey: "eventsUrl") as? String,
							siteAdmin: user.value(forKey: "siteAdmin") as? Bool,
							isFavorite: user.value(forKey: "isFavorite") as? Bool
						)
					}
				} catch {
					print("Failed to fetch users: \(error)")
					return []
				}
			}
		},
		saveUser: { user in
			await MainActor.run {
				let context = CoreDataStack.shared.persistentContainer.viewContext
				let entity = NSEntityDescription.entity(forEntityName: "LocalUser", in: context)!
				let localUser = NSManagedObject(entity: entity, insertInto: context)
				localUser.setValue(user.login, forKey: "login")
				localUser.setValue(user.id, forKey: "id")
				localUser.setValue(user.nodeId, forKey: "nodeId")
				localUser.setValue(user.avatarUrl, forKey: "avatarUrl")
				localUser.setValue(user.gravatarId, forKey: "gravatarId")
				localUser.setValue(user.url, forKey: "url")
				localUser.setValue(user.htmlUrl, forKey: "htmlUrl")
				localUser.setValue(user.followersUrl, forKey: "followersUrl")
				localUser.setValue(user.subscriptionsUrl, forKey: "subscriptionsUrl")
				localUser.setValue(user.organizationsUrl, forKey: "organizationsUrl")
				localUser.setValue(user.reposUrl, forKey: "reposUrl")
				localUser.setValue(user.receivedEventsUrl, forKey: "receivedEventsUrl")
				localUser.setValue(user.type, forKey: "type")
				localUser.setValue(user.score, forKey: "score")
				localUser.setValue(user.followingUrl, forKey: "followingUrl")
				localUser.setValue(user.gistsUrl, forKey: "gistsUrl")
				localUser.setValue(user.starredUrl, forKey: "starredUrl")
				localUser.setValue(user.eventsUrl, forKey: "eventsUrl")
				localUser.setValue(user.siteAdmin, forKey: "siteAdmin")
				localUser.setValue(user.isFavorite, forKey: "isFavorite")
				do {
					try context.save()
				} catch {
					print("Failed to save user: \(error)")
				}
			}
		},
		deleteUser: { userId in
			await MainActor.run {
				let context = CoreDataStack.shared.persistentContainer.viewContext
				let fetchRequest: NSFetchRequest<NSManagedObject> = NSFetchRequest(entityName: "LocalUser")
				fetchRequest.predicate = NSPredicate(format: "id == %d", userId)
				do {
					let results = try context.fetch(fetchRequest)
					if let user = results.first {
						context.delete(user)
						try context.save()
					}
				} catch {
					print("Failed to delete user: \(error)")
				}
			}
		}
	)
}

extension DependencyValues {
	var coreDataClient: CoreDataClient {
		get { self[CoreDataClient.self] }
		set { self[CoreDataClient.self] = newValue }
	}
}

@MainActor
final class CoreDataStack {
	static let shared = CoreDataStack()
	let persistentContainer: NSPersistentContainer
	
	private init() {
		persistentContainer = NSPersistentContainer(name: "GithubTCA")
		persistentContainer.loadPersistentStores { _, error in
			if let error = error {
				fatalError("Failed to load CoreData: \(error)")
			}
		}
	}
}
