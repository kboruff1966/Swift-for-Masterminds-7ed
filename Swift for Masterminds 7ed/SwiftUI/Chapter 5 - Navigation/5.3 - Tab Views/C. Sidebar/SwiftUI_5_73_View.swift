//
//  SwiftUI_5_73_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-73: Adding a header to the sidebar
struct SwiftUI_5_73_View: View {

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
        .tabViewSidebarHeader {
            Text("My Menu")
                .padding()
        }
    }

}

#Preview {
    SwiftUI_5_73_View()
}
