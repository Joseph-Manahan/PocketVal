//
//  ResultView.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var appData: AppData
    
    var map: Map
    var agent: Agent
    var lineup: Lineup?
    
    
    var body: some View {
        VStack  {
            if let lineup = lineup {
                Image(lineup.ability)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:350, height:450)
                Image(lineup.result)
                    .resizable()
                    .frame(width: 317, height:215)
            }
        }
        .navigationTitle(lineup?.title ?? "")
        .navigationBarTitleDisplayMode(.inline)
    }
}



