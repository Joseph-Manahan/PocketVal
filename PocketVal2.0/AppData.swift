//
//  AppData.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import Foundation

class AppData: ObservableObject {
    
    @Published var mapData: [Map]
    @Published var agentData: [[Agent]]
    @Published var lineupData: [[Lineup]]
    
    // initializers
    init() {
        
        // Lineups for Jett
        let jettAscentLineups = [
            Lineup(title: "A Site Smoke Dash", ability: "A site smoke dash-1", result: "A site smoke dash-result"),
            Lineup(title: "B site to B lobby ult", ability: "B site to B lobby ult-1", result: "B site to B lobby ult-result"),
            Lineup(title: "B lever Smoke Dash", ability: "B lever Smoke Dash-1", result: "B lever Smoke Dash-result")
        ]
        let jettHavenLineups = [
            Lineup(title: "A site entry smoke", ability: "A site entry smoke", result: "A site entry smoke result"),
            Lineup(title: "A Site Orb Grab", ability: "A Site Orb Grab", result: "A Site Orb Grab result"),
            Lineup(title: "C site Smoke Dash", ability: "C site Smoke Dash", result: "C site Smoke Dash result")
        ]
        let jettSplitLineups = [
            Lineup(title: "A main to A rafters Smoke Dash", ability: "A main to A rafters Smoke Dash", result: "A main to A rafters Smoke Dash result"),
            Lineup(title: "B Main Gamble Peek", ability: "B Main Gamble Peek", result: "B Main Gamble Peek result"),
            Lineup(title: "Defender Spawn to A Elbow", ability: "Defender Spawn to A Elbow ", result: "Defender Spawn to A Elbow result ")
        ]
        
        // Lineups for Sova
        let sovaAscentLineups = [
            Lineup(title: "Top mid to mid bot", ability: "Top mid to mid bot", result: "Top mid to mid bot-result"),
            Lineup(title: "Boathouse to B lobby", ability: "Boathouse to B lobby-1", result: "Boathouse to B lobby-result"),
            Lineup(title: "B main to B Site", ability: "B main to B Site-1", result: "B main to B Site -result"),
            Lineup(title: "B Lobby to B Site", ability: "B Lobby to B Site-1", result: "B Lobby to B Site-result")
        ]
        let sovaHavenLineups = [
            Lineup(title: "A Link to A Site", ability: "A link to A site new", result: "A Link to A Site result"),
            Lineup(title: "A Tower to A Long", ability: "A Tower to A Long", result: "A Tower to A Long Result"),
            Lineup(title: "Mid Courtyard to B Site", ability: "Mid Courtyard to B Site", result: "Mid Courtyard to B Site Result")
        ]
        let sovaSplitLineups = [
            Lineup(title: "A Tower To A Main", ability: "A tower to A main new", result: "A Tower To A Main Result"),
            Lineup(title: "B Lobby to B Site", ability: "B Lobby to B Site", result: "B Lobby to B Site result"),
            Lineup(title: "Market to Mail", ability: "Market to Mail", result: "Market to Mail result")
        ]
        
        // Lineups for Viper
        let viperAscentLineups = [
            Lineup(title: "A site set up", ability: "A site set up-1", result: "A site set up-result"),
            Lineup(title: "B Site to CT Spawn One Way", ability: "B Site to CT Spawn One Way-1", result: "B Site to CT Spawn One Way-result"),
            Lineup(title: "B Lobby to Mid Bottom Smoke", ability: "B Lobby to Mid Bottom Smoke-1", result: "B Lobby to Mid Bottom Smoke-result")
        ]
        let viperHavenLineups = [
            Lineup(title: "A site to B site wall", ability: "A site _ B site wall", result: "A site _ B site wall result"),
            Lineup(title: "A site to A long One Way", ability: "A site to A long One Way", result: "A site to A long One Way result"),
            Lineup(title: "C Lobby to C Site", ability: "C Lobby to C Site", result: "C Lobby to C Site result")
        ]
        let viperSplitLineups = [
            Lineup(title: "A main to A heaven Wall", ability: "A main to A heaven Wall", result: "A main to A heaven Wall results"),
            Lineup(title: "B Heaven Setup", ability: "B heaven SETUP", result: "B heaven SETUP result"),
            Lineup(title: "Mid Ult", ability: "Mid Ult", result: "Mid Ult result")
        ]
        
        lineupData = [jettAscentLineups, sovaAscentLineups, viperAscentLineups, jettHavenLineups, sovaHavenLineups, viperHavenLineups, jettSplitLineups, sovaSplitLineups, viperSplitLineups]
        
        // Agents
        let ascentAgents = [
            Agent(name: "Jett", image: "jett", role: "Duelist", lineups: jettAscentLineups),
            Agent(name: "Sova", image: "sova", role: "Initiator", lineups: sovaAscentLineups),
            Agent(name: "Viper", image: "viper", role: "Controller", lineups: viperAscentLineups),
        ]
        let havenAgents = [
            Agent(name: "Jett", image: "jett", role: "Duelist", lineups: jettHavenLineups),
            Agent(name: "Sova", image: "sova", role: "Initiator", lineups: sovaHavenLineups),
            Agent(name: "Viper", image: "viper", role: "Controller", lineups: viperHavenLineups),
        ]
        let splitAgents = [
            Agent(name: "Jett", image: "jett", role: "Duelist", lineups: jettSplitLineups),
            Agent(name: "Sova", image: "sova", role: "Initiator", lineups: sovaSplitLineups),
            Agent(name: "Viper", image: "viper", role: "Controller", lineups: viperSplitLineups),
        ]
        
        agentData = [ascentAgents, havenAgents, splitAgents]
        
        // Maps
        mapData = [
            Map(name: "Ascent", image: "ascent", agents: ascentAgents),
            Map(name: "Haven", image: "haven", agents: havenAgents),
            Map(name: "Split", image: "split", agents: splitAgents)
        ]
    }
}
