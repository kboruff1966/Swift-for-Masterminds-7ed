//
//  SwiftUI_5_65_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI

/// Listing 5-65: Defining a prominent tab
struct SwiftUI_5_65_View: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
            Tab("Shopping Cart", systemImage: "cart", role: .prominent) {
                Text("Shopping")
            }
        }
    }
}

#Preview {
    SwiftUI_5_65_View()
}
