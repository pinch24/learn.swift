//
//  ContentView.swift
//  FetchImage
//
//  Created by mk on 12/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // ImageView()
			MultiImageView()
        }
		.ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
