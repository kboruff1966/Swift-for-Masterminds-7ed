//
//  SwiftUI_6_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/15/26.
//

import SwiftUI

// Listing 6-13: Defining a multiplatform interface
struct SwiftUI_6_13_View: View {

    var body: some View {
        NavigationSplitView(
            sidebar: {
                MenuView()
            },
            detail: {
                #if os(macOS)
                    MacDetailView()
                #else
                    MobileDetailView()
                #endif
            }
        )
    }

}

#Preview {
    SwiftUI_6_13_View()
}
