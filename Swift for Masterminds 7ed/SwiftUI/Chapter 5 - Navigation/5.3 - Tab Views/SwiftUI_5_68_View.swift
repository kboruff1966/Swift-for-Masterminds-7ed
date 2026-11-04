//
//  SwiftUI_5_68_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/2/26.
//

import SwiftUI

/// Listing 5-68: Minimizing the tabs
struct SwiftUI_5_68_View: View {

    var body: some View {
        TabView {
            Tab("Home", systemImage: "book.circle") {
                List(1..<50) { value in
                    Text("Item \(value)")
                }
            }
            Tab("Settings", systemImage: "gear") {
                Text("Settings")
            }
        }
        .tabBarMinimizeBehavior(.onScrollDown)
    }

}

#Preview {
    SwiftUI_5_68_View()
}
