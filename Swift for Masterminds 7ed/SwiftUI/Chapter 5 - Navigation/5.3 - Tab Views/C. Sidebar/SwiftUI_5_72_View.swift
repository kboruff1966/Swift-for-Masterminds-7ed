//
//  SwiftUI_5_72_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-72: Expanding the TabView view with a sidebar
struct SwiftUI_5_72_View: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SwiftUI_5_72_View()
}
