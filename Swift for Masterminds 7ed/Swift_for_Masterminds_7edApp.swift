//
//  Swift_for_Masterminds_7edApp.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/16/26.
//

import SwiftData
import SwiftUI
import BookData_Chap7

@main
struct Swift_for_Masterminds_7edApp: App {

    @State private var appData = ApplicationData.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appData)
                .modelContainer(for: [Book.self, Author.self])
        }
    }
}
