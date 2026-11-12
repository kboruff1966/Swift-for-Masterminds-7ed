//
//  SwiftUI_5_81_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/4/26.
//

import SwiftUI
import BookData2

/// Listing 5-81: Defining a two-column split view
struct SwiftUI_5_81_View: View {

    @Environment(BookData.self) private var appData

    @State private var selectedBook: BookData2.Book?
    @State private var visibility: NavigationSplitViewVisibility = .automatic

    var body: some View {
        NavigationSplitView(
            columnVisibility: $visibility,
            sidebar: {
                BooksView(selectedBook: $selectedBook)
            },
            detail: {
                if let selectedBook {
                    DetailView(book: selectedBook)
                } else {
                    ContentUnavailableView {
                        Label("No Book", systemImage: "book.fill")
                    } description: {
                        Text("Select a book from the list.")
                    }
                }
            }
        )
        .onAppear {
            selectedBook = appData.userData.first
        }
    }

    struct BooksView: View {

        @Environment(BookData.self) private var appData
        @Binding var selectedBook: BookData2.Book?

        var body: some View {
            List(appData.userData, selection: $selectedBook) { book in
                NavigationLink(
                    value: book,
                    label: { Text(book.title) }
                )
            }
            .listStyle(.sidebar)
            .navigationTitle("Books")
        }
    }

    struct DetailView: View {

        let book: BookData2.Book

        var body: some View {
            VStack {
                Text(book.title)
                    .font(.title)
                Text(book.author)
                Text(book.displayYear)
                    .font(.caption)
                Image(book.cover).resizable().scaledToFit().frame(maxWidth: 300)
                Spacer()
            }
            .padding()
            .navigationTitle(Text("Information"))
        }
    }

}

#Preview {
    SwiftUI_5_81_View()
        .environment(BookData.shared)
}
