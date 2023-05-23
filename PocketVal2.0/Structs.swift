//
//  Structs.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import Foundation

struct Map: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var agents: [Agent]
}

struct Agent: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var role: String
    var lineups: [Lineup]
}

struct Lineup: Identifiable {
    var id = UUID()
    var title: String
    var ability: String
    var result: String
}


