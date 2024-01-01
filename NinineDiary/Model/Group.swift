//
//  Group.swift
//  NinineDiary
//
//  Created by 설우혁 on 12/31/23.
//

import Foundation
import SwiftUI


class NNGroup: Identifiable {
	let id = UUID()
	var name: String
	var leader: String
	var currentMember: Int
	var maxMember: Int
	var description: String

	init(name: String, leader: String, currentMember: Int, maxMember: Int, description: String) {
		self.name = name
		self.leader = leader
		self.currentMember = currentMember
		self.maxMember = maxMember
		self.description = description
	}
}
