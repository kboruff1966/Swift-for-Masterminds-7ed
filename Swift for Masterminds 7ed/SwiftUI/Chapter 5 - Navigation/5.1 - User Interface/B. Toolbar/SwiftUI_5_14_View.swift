//
//  SwiftUI_5_14_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI
import BookData1

/// Listing 5-14: Customizing the items in a navigation bar
struct SwiftUI_5_14_View: View {

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
                        "Email",
                        systemImage: "envelope",
                        action: { print("Read Emails") }
                    )
                    .buttonStyle(.plain)
                    .foregroundStyle(.black)
                    .padding(5)
                    .background(.yellow)
                    .badge(5)
                }
                .sharedBackgroundVisibility(.hidden)
            }

        }
    }
}

#Preview {
    SwiftUI_5_14_View()
        .environment(BookData.shared)
}
