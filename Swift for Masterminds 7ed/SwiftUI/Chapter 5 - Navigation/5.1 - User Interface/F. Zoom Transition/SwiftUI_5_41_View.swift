//
//  SwiftUI_5_41_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/22/26.
//

import SwiftUI
import BookData3

/// Listing 5-38: Opening a view with a zoom transition
struct SwiftUI_5_41_View: View {

    @Environment(BookData.self) private var appData
    @Namespace var zoomBooks

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
            List(appData.userData) { book in
                NavigationLink(
                    value: book,
                    label: {
                        CellBook(book: book)
                            .matchedTransitionSource(
                                id: book.id,
                                in: zoomBooks
                            )
                    }
                )
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
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
                        .navigationTransition(
                            .zoom(sourceID: book.id, in: zoomBooks)
                        )
                }
            )
            .navigationDestination(
                for: String.self,
                destination: { viewID in
                    if viewID == "Settings View" {
                        SettingsView()
                    } else if viewID == "Picture View" {
                        PictureView()
                        //                            .navigationTransition(
                        //                                .zoom(sourceID: viewID, in: zoomBooks)
                        //                            )

                    }
                }
            )

        }

    }
}

#Preview {
    SwiftUI_5_41_View()
        .environment(BookData.shared)
}
