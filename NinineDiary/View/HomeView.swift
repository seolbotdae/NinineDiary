//
//  HomeView.swift
//  NinineDiary
//
//  Created by 설우혁 on 12/30/23.
//

import SwiftUI

struct ListButtonStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
			.padding()
			.background(.white)
			.clipShape(RoundedRectangle(cornerRadius: 10))
			.overlay(
				RoundedRectangle(cornerRadius: 10)
					.stroke(Color.brown)
			)
			.animation(.easeOut(duration: 0.7), value: configuration.isPressed)
			.scaleEffect(configuration.isPressed ? 0.95 : 1)
	}
}

struct HomeView: View {
	@State var homeVM = HomeViewModel()

	@State var groups: [NNGroup] = []
	
	var body: some View {
		NavigationStack {
			ScrollView {
				VStack (spacing: 0) {
					HStack {
						Spacer()
						Text("icon")
							.padding()
					}
					
					HStack {
						Text("나의 그룹")
							.font(.title)
							.padding()
						Spacer()
					}
					
					
					VStack {
						ForEach(groups, id: \.id) { group in
							let group: NNGroup = homeVM.getGroup(uuid: group.id) ?? NNGroup(name: "오류!", leader: "", currentMember: 0, maxMember: 0, description: "")
							
							NavigationLink(
								destination: GroupDetailView(group: group)
							, label: {
								VStack {
									HStack {
										Text(group.name)
										Label("\(group.currentMember)/\(group.maxMember)", systemImage: "person")
										Spacer()
										Text("그룹장: \(group.leader)")
									}
									.padding(.bottom)
									
									HStack {
										Text(group.description)
										Spacer()
									}
									
									Spacer()
								}
							})
							.buttonStyle(ListButtonStyle())
						}
					}
				}
				.listRowSeparator(.hidden)
				.padding(.horizontal)
			}
			.listStyle(.plain)
			.onAppear{
				self.groups = homeVM.getGroups()
			}
		}
	}
	
}

#Preview {
	HomeView()
}
