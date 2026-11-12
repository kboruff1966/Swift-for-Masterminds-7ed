//
//  SwiftUI_5_13_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import BookData1
import SwiftUI

/// Listing 5-13: Customizing the navigation bar
struct SwiftUI_5_13_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.books) { book in
                BookView(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
            .toolbarBackground(.cyan, for: .navigationBar)
            .scrollEdgeEffectStyle(.hard, for: .top)
            .toolbarMinimizationBehavior(.onScrollDown, for: .navigationBar)
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
