//
//  HomeViewModel.swift
//  NinineDiary
//
//  Created by 설우혁 on 12/31/23.
//

import Foundation
import SwiftUI

@Observable
class HomeViewModel {
	private var groups: [NNGroup] = [
		NNGroup(name: "Group1", leader: "Leader1", currentMember: 2, maxMember: 10, description: "Description of Group1"),
		NNGroup(name: "Group2", leader: "Leader2", currentMember: 4, maxMember: 10, description: "Description of Group2"),
		NNGroup(name: "Group3", leader: "Leader3", currentMember: 6, maxMember: 10, description: "Description of Group3"),
		NNGroup(name: "Group4", leader: "Leader4", currentMember: 3, maxMember: 10, description: "Description of Group4"),
		NNGroup(name: "Group5", leader: "Leader5", currentMember: 5, maxMember: 10, description: "Description of Group5"),
		NNGroup(name: "Group6", leader: "Leader6", currentMember: 1, maxMember: 10, description: "Description of Group6"),
		NNGroup(name: "Group7", leader: "Leader7", currentMember: 7, maxMember: 10, description: "Description of Group7"),
		NNGroup(name: "Group8", leader: "Leader8", currentMember: 8, maxMember: 10, description: "Description of Group8"),
		NNGroup(name: "Group9", leader: "Leader9", currentMember: 9, maxMember: 10, description: "Description of Group9"),
		NNGroup(name: "Group10", leader: "Leader10", currentMember: 10, maxMember: 10, description: "Description of Group10"),
		NNGroup(name: "Group11", leader: "Leader11", currentMember: 2, maxMember: 10, description: "Description of Group11"),
		NNGroup(name: "Group12", leader: "Leader12", currentMember: 3, maxMember: 10, description: "Description of Group12"),
		NNGroup(name: "Group13", leader: "Leader13", currentMember: 4, maxMember: 10, description: "Description of Group13"),
		NNGroup(name: "Group14", leader: "Leader14", currentMember: 5, maxMember: 10, description: "Description of Group14"),
		NNGroup(name: "Group15", leader: "Leader15", currentMember: 6, maxMember: 10, description: "Description of Group15"),
		NNGroup(name: "Group16", leader: "Leader16", currentMember: 7, maxMember: 10, description: "Description of Group16"),
		NNGroup(name: "Group17", leader: "Leader17", currentMember: 8, maxMember: 10, description: "Description of Group17"),
		NNGroup(name: "Group18", leader: "Leader18", currentMember: 9, maxMember: 10, description: "Description of Group18"),
		NNGroup(name: "Group19", leader: "Leader19", currentMember: 1, maxMember: 10, description: "Description of Group19"),
		NNGroup(name: "Group20", leader: "Leader20", currentMember: 2, maxMember: 10, description: "Description of Group20"),
		NNGroup(name: "Group21", leader: "Leader21", currentMember: 3, maxMember: 10, description: "Description of Group21"),
		NNGroup(name: "Group22", leader: "Leader22", currentMember: 4, maxMember: 10, description: "Description of Group22"),
		NNGroup(name: "Group23", leader: "Leader23", currentMember: 5, maxMember: 10, description: "Description of Group23"),
		NNGroup(name: "Group24", leader: "Leader24", currentMember: 6, maxMember: 10, description: "Description of Group24"),
		NNGroup(name: "Group25", leader: "Leader25", currentMember: 7, maxMember: 10, description: "Description of Group25"),
		NNGroup(name: "Group26", leader: "Leader26", currentMember: 8, maxMember: 10, description: "Description of Group26"),
		NNGroup(name: "Group27", leader: "Leader27", currentMember: 9, maxMember: 10, description: "Description of Group27"),
		NNGroup(name: "Group28", leader: "Leader28", currentMember: 10, maxMember: 10, description: "Description of Group28"),
		NNGroup(name: "Group29", leader: "Leader29", currentMember: 1, maxMember: 10, description: "Description of Group29"),
		NNGroup(name: "Group30", leader: "Leader30", currentMember: 2, maxMember: 10, description: "Description of Group30")
	]
	
	func getGroup(uuid: UUID) -> NNGroup? {
		return groups.first { $0.id == uuid }
	}
	
	func getGroups() -> [NNGroup] {
		return self.groups
	}
}
