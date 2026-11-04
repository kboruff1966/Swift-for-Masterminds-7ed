//
//  SwiftUI_5_66_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI

/// Listing 5-66: Displaying a badge on a tab
struct SwiftUI_5_66_View: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                Text("Main Screen")
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
            .badge(12)
        }
    }
}

#Preview {
    SwiftUI_5_66_View()
}
