//
//  ContentView_04_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.4 Custom Alignment Type

import SwiftUI

extension VerticalAlignment {
	
	private enum OneThird: AlignmentID {
		
		static func defaultValue(in d: ViewDimensions) -> CGFloat {
			
			return d.height / 3
		}
	}
	
	static let oneThird = VerticalAlignment(OneThird.self)
}

struct ContentView_04_02: View {
	
	var body: some View {
		
		HStack(alignment: .oneThird) {
			
			Rectangle()
				.foregroundColor(Color.red)
				.frame(width: 40, height: 200)
			
			Rectangle()
				.foregroundColor(Color.green)
				.frame(width: 40, height: 200)
				.alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top] })
			
			Rectangle()
				.foregroundColor(Color.blue)
				.frame(width: 40, height: 200)
				.alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.bottom] - 100 })
			
			Rectangle()
				.foregroundColor(Color.yellow)
				.frame(width: 40, height: 200)
				.alignmentGuide(.oneThird, computeValue: { d in d[VerticalAlignment.top] - 40 })
		}
	}
}

struct ContentView_04_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_04_02()
	}
}
