//
//  SwiftUI_5_70_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

/// Listing 5-70: Adding a search tab
struct SwiftUI_5_70_View: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
            Tab(role: .search) {
                Text("Search")
            }
        }
    }

}

#Preview {
    SwiftUI_5_70_View()
}
