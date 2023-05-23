//
//  AgentView.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import SwiftUI

struct AgentView: View {
    @ObservedObject var appData: AppData
    var map: Map
    @State private var searchText = ""
    
        
    var body: some View {
        VStack {
            Text("Select your Agent:")
            SearchBar(text: $searchText)
                .padding(.horizontal)
            
            List(filteredAgents) { agent in
                NavigationLink(destination: LineupView(appData: appData, map: map, agent: agent)) {
                    HStack {
                        Image(agent.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        VStack {
                            Text(agent.name)
                                .font(.title)
                            Text(agent.role)
                        }
                    }
                }
            }
            .navigationTitle(map.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private var filteredAgents: [Agent] {
        if searchText.isEmpty {
            return map.agents
        } else {
            return map.agents.filter { agent in
                agent.name.localizedCaseInsensitiveContains(searchText) ||
                agent.role.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
}

struct SearchBar: UIViewRepresentable {
    @Binding var text: String

    class Coordinator: NSObject, UISearchBarDelegate {
        @Binding var text: String

        init(text: Binding<String>) {
            _text = text
        }

        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            text = searchText
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }

    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

