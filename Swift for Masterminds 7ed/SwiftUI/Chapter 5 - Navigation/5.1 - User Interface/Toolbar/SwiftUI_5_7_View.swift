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
                        "Save",
                        systemImage: "folder",
                        action: { print("Saving...") }
                    )
                    Button(
                        "Delete",
                        systemImage: "trash.fill",
                        action: { print("Deleting...") }
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
