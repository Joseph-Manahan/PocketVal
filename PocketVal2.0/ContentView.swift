//
//  ContentView.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var appData: AppData
    @State var showSheet = false
    

    var body: some View {
        // Logo Placement
        VStack{
            Image("pocketval3")
                .resizable()
                .frame(width: 300, height: 53)
                .scaledToFit()
        }
        
        NavigationView {
            // Lists available Maps
            List(appData.mapData) { map in
                // Content View --> Agent View
                NavigationLink (destination: AgentView(appData: appData, map: map)) {
                    ZStack {
                    Image("\(map.image)")
                        .resizable()
                        .frame(width:250, height:150, alignment: .center)
                    Text("\(map.name)")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                        .padding()
                        .cornerRadius(10)
                        .padding()
                    } // end ZStack
                }
                .listStyle(.inset)
                .navigationTitle("Select Map:")
                .navigationBarTitleDisplayMode(.inline)
            } // end List
            .toolbar() {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showSheet = true
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.red)
                    }
                }
            }
            .sheet(isPresented: $showSheet) {
                FeedbackView()
            }
        }
    }
}





