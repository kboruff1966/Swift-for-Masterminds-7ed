//
//  SwiftUI_5_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-5: Grouping multiple related buttons
struct SwiftUI_5_5_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                ToolbarItemGroup(placement: .automatic) {
                    Button(
                        "Save",
                        systemImage: "folder",
                        action: { print("Save Item") }
                    )
                    Button(
                        "Send",
                        systemImage: "envelope",
                        action: { print("Send Message") }
                    )
                }
            }
        }
    }
}

#Preview {
    SwiftUI_5_5_View()
        .environment(BookData.shared)
}
