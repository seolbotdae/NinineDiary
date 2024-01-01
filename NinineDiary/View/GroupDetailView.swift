//
//  GroupDetailView.swift
//  NinineDiary
//
//  Created by 설우혁 on 1/1/24.
//

import SwiftUI

struct GroupDetailView: View {
	var group: NNGroup
	
    var body: some View {
		VStack {
			Text(group.id.uuidString)
			Text(group.name)
			Text(group.description)
			Text(group.leader)
		}
		.onAppear {
		
		}
	}
}


