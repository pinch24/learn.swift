/// WWDC 2021 - Protect mutable state with Swift actors
/// https://developer.apple.com/videos/play/wwdc2021/10133/

//
//  WWDC2021_10133.swift
//  WWDCConcurrency
//
//  Created by mk on 12/15/23.
//
 
import SwiftUI

struct WWDC2021_10133: View {
	var body: some View {
        Text("Protect mutable state with Swift actors")
			.task {
				let counter = Counter()
				for _ in 0...99 {
					Task.detached {
						print("Counter: ", await counter.increment())
					}
				}
			}
    }
}

fileprivate actor Counter {
	var value = 0
	
	func increment() -> Int {
		value = value + 1
		return value
	}
}

// fileprivate actor ImageDownloader {
// 	private var cache: [URL: Image] = [:]
// 	
// 	func image(from url: URL) async throws -> Image? {
// 		if let cached = cache[url] {
// 			return cached
// 		}
// 		
// 		let image = try await downloadImage(from: url)
// 		
// 		cache[url] = image
// 		return image
// 	}
// }

#Preview {
    WWDC2021_10133()
}
