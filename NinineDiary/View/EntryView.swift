//
//  EntryView.swift
//  NinineDiary
//
//  Created by 설우혁 on 12/30/23.
//

import SwiftUI

struct EntryView: View {
	var body: some View {
		TabView {
			Group {
				HomeView()
					.tabItem {
						Image(systemName: "1.square.fill")
						Text("First")
					}
				Text("Another Tab")
					.tabItem {
						Image(systemName: "2.square.fill")
						Text("Second")
					}
				Text("The Last Tab")
					.tabItem {
						Image(systemName: "3.square.fill")
						Text("Third")
					}
					.badge(10)
			}
			.toolbarBackground(Color.white, for: .tabBar)
			.toolbarBackground(.visible, for: .tabBar)
		}
	}
}

#Preview {
	EntryView()
}
