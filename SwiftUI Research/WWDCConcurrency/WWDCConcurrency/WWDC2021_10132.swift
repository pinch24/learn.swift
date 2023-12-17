/// WWDC 2021 - Meet async/await in Swift
/// https://developer.apple.com/videos/play/wwdc2021/10132/

//
//  WWDC2021_10132.swift
//  WWDCConcurrency
//
//  Created by mk on 12/15/23.
//

import SwiftUI

struct WWDC2021_10132: View {
	@State var images: [UIImage] = []
	@State var isLoading = false
	
	fileprivate let imageUrl = "https://picsum.photos/400"
	fileprivate let asyncCounter = AsyncCounter()
	fileprivate let model = FetchImageModel()
	
	var body: some View {
		Group {
			Text("""
			3:43 - Writing a function using completion handlers
			8:00 - Using completion handlers with the Result type
			8:30 - Using async/await
			13:15 - Async properties
			14:17 - Async sequences
			21:22 - Testing using XCTestExpectation
			21:56 - Testing using async/await
			""")
			.font(.callout)
			.padding(8)
			
			ScrollView(.horizontal) {
				LazyHGrid(rows: [GridItem(.flexible())], content: {
					ForEach(images.reversed(), id: \.self) { image in
						Image(uiImage: image)
							.frame(width: model.imageSize, height: model.imageSize)
							.aspectRatio(contentMode: .fit)
					}
				})
			}
			
			Text("Count: \(images.count)")
				.padding(.bottom, 88)
			
			Button(action: {
				Task {
					await refreshImages()
				}
			}, label: {
				Image(systemName: "square.and.arrow.down")
					.font(.system(size: model.imageSize))
					.foregroundColor(.indigo)
					.fontWeight(.bold)
					.opacity(isLoading ? 0.4 : 1.0)
			})
			.disabled(isLoading)
		}
		.task {
			await refreshImages()
		}
	}
	
	func refreshImages() async {
		do {
			for try await index in asyncCounter {
				isLoading = true
				let thumbnail = try await model.fetchThumbnail(url: imageUrl)
				isLoading = false
				images.append(thumbnail)
			}
		}
		catch {
			print("Error: Async Iterator")
		}
	}
}

struct AsyncCounter: AsyncSequence {
	typealias Element = Int
	typealias AsyncIterator = CounterIterator

	struct CounterIterator: AsyncIteratorProtocol {
		var count = 1
		let limit = 4

		mutating func next() async -> Int? {
			guard count <= limit else {
				return nil
			}
			
			defer { count += 1 }
			return count
		}
	}

	func makeAsyncIterator() -> CounterIterator {
		return CounterIterator()
	}
}

struct FetchImageModel {
	let imageSize: CGFloat = 88
	
	enum FetchError: Error {
		case badID
		case badImage
	}
	
	func fetchThumbnail(url: String) async throws -> UIImage {
		let request = thumbnailURLRequest(url: url)
		let (data, response) = try await URLSession.shared.data(for: request)
		guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw FetchError.badID }
		guard let maybeImage = UIImage(data: data) else { throw FetchError.badID }
		guard let thumbnail = await makeThumbnail(image: maybeImage) else { throw FetchError.badID }
		return thumbnail
	}
	
	func makeThumbnail(image: UIImage) async -> UIImage? {
		let size = CGSize(width: imageSize, height: imageSize)
		return await image.byPreparingThumbnail(ofSize: size)
	}
	
	func thumbnailURLRequest(url: String) -> URLRequest {
		if let url = URL(string: url) {
			return URLRequest(url: url)
		}
		return URLRequest(url: URL(filePath: "WWDC23-Devs"))
	}
}

#Preview {
	WWDC2021_10132()
}
