//
//  SwiftUI_5_74_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-74: Creating a section for the sidebar
struct SwiftUI_5_74_View: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
            TabSection("More Info") {
                Tab("Additional One", systemImage: "plus") {
                    Text("Additional Tab One")
                }
                Tab("Additional Two", systemImage: "pencil") {
                    Text("Additional Tab Two")
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }

}

#Preview {
    SwiftUI_5_74_View()
}
