//
//  SwiftUI_5_33_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/20/26.
//

import SwiftUI

/// Listing 5-33: Using custom navigation
struct SwiftUI_5_33_View: View {

    @Environment(BookData.self) private var appData
    @State private var viewPath = NavigationPath()

    var body: some View {

        NavigationStack(path: $viewPath) {
            List(appData.userData) { book in
                NavigationLink(
                    value: book,
                    label: { CellBook(book: book) }
                )
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(
                        value: "Settings View",
                        label: { Image(systemName: "gear") }
                    )
                }
            }
            .navigationDestination(
                for: Book.self,
                destination: { book in
                    DetailView2(viewPath: $viewPath, book: book)
                }
            )
            .navigationDestination(
                for: String.self,
                destination: { viewID in
                    if viewID == "Settings View" {
                        SettingsView2(viewPath: $viewPath)
                    }
                }
            )

        }

    }
}

#Preview {
    SwiftUI_5_33_View()
        .environment(BookData.shared)
}
