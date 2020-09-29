//
//  ContentView_06_01.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.6 ZStack

import SwiftUI

fileprivate extension HorizontalAlignment {
	
	enum CustomHorizontalAlignment: AlignmentID {
		
		static func defaultValue(in d: ViewDimensions) -> CGFloat {
			
			return d[HorizontalAlignment.center]
		}
	}
	
	static let alignment = HorizontalAlignment(CustomHorizontalAlignment.self)
}

fileprivate extension VerticalAlignment {
	
	enum CustomVerticalAlignment: AlignmentID {
		
		static func defaultValue(in d: ViewDimensions) -> CGFloat {
			
			return d[VerticalAlignment.center]
		}
	}
	
	static let alignment = VerticalAlignment(CustomVerticalAlignment.self)
}

fileprivate extension Alignment {
	
	static let alignment = Alignment(horizontal: .alignment, vertical: .alignment)
}

struct ContentView_06_01: View {
	
	var body: some View {
		
		ZStack(alignment: .alignment) {
			
			Rectangle()
				.foregroundColor(Color.red)
				.frame(width: 100, height: 100)
				.alignmentGuide(HorizontalAlignment.alignment, computeValue: { d in d[.trailing] })
				.alignmentGuide(VerticalAlignment.alignment, computeValue: { d in d[.bottom] })
			
			Rectangle()
				.foregroundColor(Color.green)
				.frame(width: 100, height: 100)
				.alignmentGuide(HorizontalAlignment.alignment, computeValue: { d in d[.center] })
				.alignmentGuide(VerticalAlignment.alignment, computeValue: { d in d[.top] })
			
			Circle()
				.foregroundColor(Color.blue)
				.frame(width: 100, height: 100)
				.alignmentGuide(HorizontalAlignment.alignment, computeValue: { d in d[.leading] })
				.alignmentGuide(VerticalAlignment.alignment, computeValue: { d in d[.bottom] })
		}
	}
}

struct ContentView_06_01_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_06_01()
	}
}
