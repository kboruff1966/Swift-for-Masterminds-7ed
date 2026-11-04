//
//  SwiftUI_5_64_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI

/// Listing 5-64: Defining a TabView view with two tabs
struct SwiftUI_5_64_View: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
        }
    }
}

#Preview {
    SwiftUI_5_64_View()
}
