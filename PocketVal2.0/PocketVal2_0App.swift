//
//  PocketVal2_0App.swift
//  PocketVal2.0
//
//  Created by Joseph Manahan on 5/11/23.
//

import SwiftUI

@main
struct PocketVal2_0App: App {
    @StateObject private var appData = AppData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(appData)
        }
    }
}
