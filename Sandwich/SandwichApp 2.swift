//
//  SandwichApp.swift
//  Sandwich
//
//  Created by Matthias Kreier on 10/17/22.
//

import SwiftUI

@main
struct SandwichApp: App {
    @StateObject private var store = SandwichStore()

    var body: some Scene {
        WindowGroup {
            ContentView(store: store)
        }
    }
}
