//
//  SwiftUI_5_41_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/22/26.
//

import BookData3
import SwiftUI

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
                        BookView(book: book)
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
                ToolbarItem(placement: .primaryAction) {
                    NavigationLink(
                        value: "Settings View",
                        label: { Image(systemName: "gear") }
                    )
                }
            }
            .navigationDestination(
                for: BookData3.Book.self,
                destination: { book in
                    DetailBookView(book: book)
                        #if os(iOS)
                        .navigationTransition(
                            .zoom(sourceID: book.id, in: zoomBooks)
                        )
                        #endif
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
