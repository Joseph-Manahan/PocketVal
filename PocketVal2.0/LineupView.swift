//
//  LineupView.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import SwiftUI

struct LineupView: View {
    
    @ObservedObject var appData: AppData
    
    var map: Map
    var agent: Agent
    
        
    var body: some View {
        List(agent.lineups) { lineup in
            NavigationLink(destination: ResultView(appData: appData, map: map, agent: agent, lineup: lineup)) {
                VStack(alignment: .leading) {
                    Text(lineup.title)
                        .font(.headline)
                    Image(lineup.result)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:150, height: 100)
                        .scaledToFit()
                }
            }
            .navigationTitle("\(agent.name) Lineups on \(map.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

