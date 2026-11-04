//
//  SwiftUI_5_67_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI

/// Listing 5-67: Selecting the Settings view
struct SwiftUI_5_67_View: View {

    @State private var selectedView = 2

    var body: some View {
        TabView(selection: $selectedView) {
            Tab("Home", systemImage: "book.circle", value: 1) {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear", value: 2) {
                Text("Settings")
            }
        }
    }
}

#Preview {
    SwiftUI_5_67_View()
}
