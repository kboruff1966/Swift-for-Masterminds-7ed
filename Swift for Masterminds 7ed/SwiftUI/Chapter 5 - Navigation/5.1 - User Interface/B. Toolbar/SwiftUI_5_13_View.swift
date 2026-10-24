//
//  SwiftUI_5_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-13: Customizing the navigation bar
struct SwiftUI_5_13_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)

            #if !os(macOS)
                .toolbarBackgroundVisibility(.visible, for: .navigationBar)
                .toolbarBackground(.cyan, for: .navigationBar)
            #endif

            .scrollEdgeEffectStyle(.hard, for: .top)

            #if !os(macOS)
                .toolbarMinimizationBehavior(.onScrollDown, for: .navigationBar)
            #endif

            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(
                        "Email",
                        systemImage: "envelope",
                        action: {
                            print("Read Emails")
                        }
                    )
                }
            }
        }
    }
}

#Preview {
    SwiftUI_5_13_View()
        .environment(BookData.shared)
}
