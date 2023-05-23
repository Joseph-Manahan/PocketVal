//
//  FeedbackView.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/19/23.
//

import SwiftUI

struct FeedbackView: View {

    @EnvironmentObject var appData: AppData
    @Environment(\.dismiss) var dismiss
    @State private var mapInput: String = ""
    @State private var agentInput: String = ""
    @State private var lineupInput: String = ""
    @State private var descInput: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image("pocketval3")
                .resizable()
                .frame(width: 300, height: 53)
                .scaledToFit()
            Text("Your feedback is greatly appreciated!")
            HStack {
                Spacer()
                Button("Close") {
                    dismiss()
                }
                .padding()
                .foregroundColor(.red)
            }

            TextField("Map:", text: $mapInput)
                .textFieldStyle(.roundedBorder)
            TextField("Agent:", text: $agentInput)
                .textFieldStyle(.roundedBorder)
            TextField("Lineup:", text: $lineupInput)
                .textFieldStyle(.roundedBorder)
            
            if descInput.isEmpty {
                           Text("Description:")
                               .foregroundColor(.gray)
                               .opacity(0.6)
                       }
            
            TextEditor(text: $descInput)
                .frame(minHeight: 150)
                .border(Color.gray, width: 1) 

            Button("Submit") {
                dismiss()
            }
            .foregroundColor(.red) 
            
            Spacer()
        }
        .padding()
    }
}


