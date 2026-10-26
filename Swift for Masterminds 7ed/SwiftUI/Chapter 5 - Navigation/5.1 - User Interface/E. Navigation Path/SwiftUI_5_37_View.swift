//
//  SwiftUI_5_37_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/21/26.
//

import SwiftUI

/// Listing 5-34: Controlling the navigation path from the initial view
struct SwiftUI_5_37_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
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
                    DetailView3(book: book)
                }
            )
            .navigationDestination(
                for: String.self,
                destination: { viewID in
                    if viewID == "Settings View" {
                        SettingsView3()
                    } else if viewID == "Picture View" {
                        PictureView()
                    }
                }
            )
        }
    }
}

#Preview {
    SwiftUI_5_37_View()
        .environment(BookData.shared)
}
