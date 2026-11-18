//
//  SwiftUI_6_28_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/16/26.
//

import SwiftUI

// Listing 6-28: Defining a two-column interface for a multi-platform application
struct SwiftUI_6_28_View: View {

    var body: some View {
        NavigationSplitView(
            sidebar: {
                MenuView()
            },
            detail: {
                DetailView()
            }
        )
    }
}

#Preview {
    SwiftUI_6_28_View()
}
