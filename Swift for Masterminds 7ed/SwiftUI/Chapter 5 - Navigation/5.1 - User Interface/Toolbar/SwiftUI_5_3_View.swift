//
//  SwiftUI_5_3_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-3: Adding a button to the navigation bar
struct SwiftUI_5_3_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(
                        "Delete",
                        systemImage: "trash",
                        action: {
                            print("Delete Element")
                        }
                    )
                    .tint(.red)
                }
            }
        }
    }
}

#Preview {
    SwiftUI_5_3_View()
        .environment(BookData.shared)
}
