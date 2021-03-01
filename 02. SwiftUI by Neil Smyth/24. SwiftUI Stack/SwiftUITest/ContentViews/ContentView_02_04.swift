//
//  ContentView_02_04.swift
//  SwiftUITest
//
//  Created by mk on 2020/09/29.
//
// 24.2 Alignment Guide

import SwiftUI

struct ContentView_02_04: View {
	
	var body: some View {
		
		VStack(alignment: .leading) {
			
			Rectangle()
				.foregroundColor(Color.red)
				.frame(width: 80, height: 40)
			
			Rectangle()
				.foregroundColor(Color.green)
				.frame(width: 200, height: 40)
				.alignmentGuide(.leading, computeValue: { d in d[HorizontalAlignment.trailing] + 40 })
			
			Rectangle()
				.foregroundColor(Color.blue)
				.frame(width: 120, height: 40)
		}
	}
}

struct ContentView_02_04_Previews: PreviewProvider {
	
	static var previews: some View {
		
		ContentView_02_04()
	}
}
