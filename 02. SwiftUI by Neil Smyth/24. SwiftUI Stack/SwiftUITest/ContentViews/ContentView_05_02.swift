//
//  ContentView_05_02.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.5 Stack Alignment

import SwiftUI

extension VerticalAlignment {
	
	private enum CrossAlignment: AlignmentID {
		
		static func defaultValue(in d: ViewDimensions) -> CGFloat {
			
			return d[.bottom]
		}
	}
	
	static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}

struct ContentView_05_02: View {
	
	var body: some View {
		
		HStack(alignment: .crossAlignment, spacing: 20) {
			
			Circle()
				.foregroundColor(Color.purple)
				.frame(width: 100, height: 100)
				.alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center] })
			
			VStack(alignment: .center) {
				
				Rectangle()
					.foregroundColor(Color.red)
					.frame(width: 100, height: 100)
				
				Rectangle()
					.foregroundColor(Color.green)
					.frame(width: 100, height: 100)
				
				Rectangle()
					.foregroundColor(Color.blue)
					.frame(width: 100, height: 100)
					.alignmentGuide(.crossAlignment, computeValue: { d in d[VerticalAlignment.center] })
				
				Rectangle()
					.foregroundColor(Color.yellow)
					.frame(width: 100, height: 100)
			}
		}
	}
}

struct ContentView_05_02_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_05_02()
	}
}
