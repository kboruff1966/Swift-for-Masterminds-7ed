//
//  SwiftUI_5_7_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-7: Defining the buttons intent
struct SwiftUI_5_7_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {

        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItemGroup(placement: .primaryAction) {
                    Button(
                        "Add Book",
                        systemImage: "plus.app",
                        action: { print("Adding Book...") }
                    )
                }
                ToolbarItemGroup(placement: .secondaryAction) {
                    Button(
                        "Sort Books",
                        systemImage: "arrow.up.arrow.down",
                        action: { print("Sorting Books...") }
                    )
                    Button(
                        "Book Info",
                        systemImage: "info.circle",
                        action: { print("Book Info") }
                    )
                }
            }
        }
    }
}

#Preview {
    SwiftUI_5_7_View()
        .environment(BookData.shared)
}
