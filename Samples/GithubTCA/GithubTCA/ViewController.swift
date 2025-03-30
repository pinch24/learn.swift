//
//  ViewController.swift
//  GithubTCA
//
//  Created by Mk on 3/10/25.
//

import ComposableArchitecture
import Combine
import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var apiButton: UIButton!
	@IBOutlet weak var localButton: UIButton!
	@IBOutlet weak var buttonUnderline: UIView!
	@IBOutlet weak var searchBar: UISearchBar!
	@IBOutlet weak var listTableView: UITableView!
	
	let store: StoreOf<GithubSearchFeature>
	let viewStore: ViewStore<GithubSearchFeature.State, GithubSearchFeature.Action>
	var cancellables: Set<AnyCancellable> = []
	
	required init?(coder: NSCoder) {
		self.store = Store(initialState: GithubSearchFeature.State(), reducer: { GithubSearchFeature() })
		self.viewStore = ViewStore(store, observe: { $0 })
		super.init(coder: coder)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		/// Gesture - Keyboard Hide
		let tabGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
		view.addGestureRecognizer(tabGesture)
		
		/// State - Mode
		viewStore.publisher.mode
			.receive(on: DispatchQueue.main)
			.sink { mode in
				if mode == .API {
					if self.viewStore.isLogin {
						self.viewStore.send(.searchAPIQuery(self.searchBar.text ?? ""))
					}
				} else {
					self.viewStore.send(.fetchLocalData(self.searchBar.text ?? ""))
				}
			}
			.store(in: &cancellables)
				
		/// State - Github Login
		viewStore.publisher.isLogin
			.receive(on: DispatchQueue.main)
			.sink { isLogin in
				if isLogin {
					self.showAlert(title: "Github Auth", message: "Github Authentication Successfully.")
					self.viewStore.send(.searchAPIQuery(self.searchBar.text ?? ""))
				}
			}
			.store(in: &cancellables)
		
		/// State - Github Users
		viewStore.publisher.users
			.receive(on: DispatchQueue.main)
			.sink { [weak self] users in
				self?.listTableView.reloadData()
			}
			.store(in: &cancellables)
	}
	
	@objc func hideKeyboard() {
		view.endEditing(true)
	}
	
	func handleGithubToken(_ code: String) {
		viewStore.send(.fetchToken(code))
	}
	
	func showLoginAlert() {
		if viewStore.isLogin == false {
			showAlert(
				title: "Github Auth",
				message: "Please login to Github to search users.",
				confirmText: "Yes",
				cancelText: "No",
				confirmAction: {
					self.viewStore.send(.openGithubAuth)
				}
			)
		}
	}
}

/// Button Actions
extension ViewController {
	@IBAction func apiButtonTapped(_ sender: UIButton) {
		viewStore.send(.setMode(.API))
		UIView.animate(withDuration: 0.2) {
			sender.isSelected = true
			self.localButton.isSelected = false
			self.buttonUnderline.center.x = self.apiButton.center.x
		}
	}
	
	@IBAction func localButtonTapped(_ sender: UIButton) {
		viewStore.send(.setMode(.LOCAL))
		UIView.animate(withDuration: 0.2) {
			sender.isSelected = true
			self.apiButton.isSelected = false
			self.buttonUnderline.center.x = self.localButton.center.x
		}
	}
}

/// Search Bar
extension ViewController: UISearchBarDelegate {
	func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
		/// Check - Login (API needs OAuth Token)
		if viewStore.state.mode == .API {
			showLoginAlert()
		}
	}
	
	func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
		if viewStore.state.mode == .API {
			viewStore.send(.searchAPIQuery(searchBar.text ?? ""))
		} else {
			viewStore.send(.fetchLocalData(searchBar.text ?? ""))
		}
		
		listTableView.setContentOffset(.zero, animated: true)
		hideKeyboard()
	}
	
	func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
		/// Always Searchable in LOCAL Mode
		if viewStore.state.mode == .LOCAL {
			viewStore.send(.fetchLocalData(searchBar.text ?? ""))
		}
	}
}

/// Alert View
extension ViewController {
	func showAlert(title: String, message: String, confirmText: String = "Yes", cancelText: String? = nil, confirmAction: (() -> Void)? = nil) {
		let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
		alert.addAction(UIAlertAction(title: confirmText, style: .default, handler: { _ in
			confirmAction?()
		}))
		if let cancelText {
			alert.addAction(UIAlertAction(title: cancelText, style: .cancel, handler: nil))
		}
		present(alert, animated: true, completion: nil)
	}
}

class GithubUserCell: UITableViewCell {
	@IBOutlet weak var avatarImageView: UIImageView!
	@IBOutlet weak var loginLabel: UILabel!
	@IBOutlet weak var favoriteButton: UIButton!
	
	var user: GithubUser?
	var viewStore: ViewStore<GithubSearchFeature.State, GithubSearchFeature.Action>?
	
	@IBAction func favoriteButtonTapped(_ sender: UIButton) {
		guard var user = user else { return }
		sender.isSelected.toggle()
		user.isFavorite = sender.isSelected
		Task {
			if let isFavorite = user.isFavorite, isFavorite {
				self.viewStore?.send(.saveUser(user))
			} else {
				self.viewStore?.send(.deleteUser(user.id))
			}
		}
	}
}

extension ViewController: UITableViewDataSource {
	func numberOfSections(in tableView: UITableView) -> Int {
		return viewStore.state.mode == .LOCAL ? viewStore.groupedUsers.count : 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		if viewStore.state.mode == .LOCAL {
			let key = Array(viewStore.groupedUsers.keys.sorted())[section]
			return viewStore.groupedUsers[key]?.count ?? 0
		} else {
			return viewStore.users.count
		}
	}
	
	func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
		if viewStore.state.mode == .LOCAL {
			return Array(viewStore.groupedUsers.keys.sorted())[section]
		}
		return nil
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "GithubUserCell", for: indexPath) as! GithubUserCell
		
		let user: GithubUser
		if viewStore.state.mode == .LOCAL {
			let key = Array(viewStore.groupedUsers.keys.sorted())[indexPath.section]
			user = viewStore.groupedUsers[key]?[indexPath.row] ?? GithubUser(login: "", id: 0)
		} else {
			user = viewStore.users[indexPath.row]
		}
		
		/// Set Data
		cell.user = user
		cell.viewStore = self.viewStore
		
		/// Avatar Image
		if let url = URL(string: user.avatarUrl ?? "") {
			cell.avatarImageView.loadImage(from: url)
		} else {
			cell.avatarImageView.image = UIImage(systemName: "person.crop.circle")
		}
		cell.avatarImageView.layer.cornerRadius = cell.avatarImageView.frame.size.width / 2
		cell.avatarImageView.clipsToBounds = true
		
		/// Login Name
		cell.loginLabel.text = user.login
		
		/// Favorite State
		cell.favoriteButton.isSelected = (user.isFavorite ?? false) ? true : false
		
		/// Strike-through for non-favorite users in Local mode
		if viewStore.state.mode == .LOCAL && !(user.isFavorite ?? false) {
			let attributeString: NSMutableAttributedString =  NSMutableAttributedString(string: user.login)
			attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 2, range: NSMakeRange(0, attributeString.length))
			cell.loginLabel.attributedText = attributeString
		} else {
			cell.loginLabel.attributedText = nil
			cell.loginLabel.text = user.login
		}
		
		return cell
	}
}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 64
	}
}

extension UIImageView {
	func loadImage(from url: URL) {
		DispatchQueue.global().async { [weak self] in
			if let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
				DispatchQueue.main.async {
					self?.image = image
				}
			}
		}
	}
}
