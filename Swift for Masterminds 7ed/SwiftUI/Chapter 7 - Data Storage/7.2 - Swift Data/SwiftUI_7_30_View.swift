//
//  SwiftUI_7_30_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/8/26.
//

import BookData_Chap7
import SwiftData
import SwiftUI

/// Listing 7-30: Searching books by title
struct SwiftUI_7_30_View: View {

    @Environment(ApplicationData.self) private var appData

    @Environment(\.modelContext) var dbContext
    @State private var searchValue: String = ""

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
            ListBooksView(search: searchValue)
                .listStyle(.plain)
                .navigationTitle("Books")
                .toolbarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        NavigationLink(
                            value: "Add Book",
                            label: { Image(systemName: "plus") }
                        )
                    }
                }
                .navigationDestination(
                    for: String.self,
                    destination: { viewID in

                        switch viewID {
                        case "Add Book":
                            AddBookView()
                        case "List Authors":
                            ListAuthorsView()
                        case "Add Author":
                            AddAuthorView()
                        default:
                            EmptyView()
                        }

                    }
                )
                .onAppear {

                    let predicate = #Predicate<Book> { book in
                        book.author?.name == nil
                    }

                    let sort = SortDescriptor<Book>(
                        \.title,
                        order: .forward
                    )

                    let descriptor = FetchDescriptor<Book>(
                        predicate: predicate,
                        sortBy: [sort]
                    )

                    if let list = try? dbContext.fetch(descriptor) {
                        for book in list {
                            print(book.title)
                        }
                    }

                    if let count = try? dbContext.fetchCount(descriptor) {
                        print(count)
                    }
                }

        }
        .searchable(text: $searchValue, prompt: Text("Search"))
    }

    struct ListBooksView: View {

        @Query private var listBooks: [Book]

        init(search: String) {

            var predicate = #Predicate<Book> { _ in true }

            if !search.isEmpty {
                let searching = search.lowercased()
                predicate = #Predicate<Book> { book in
                    book.title.localizedStandardContains(searching)
                }
            }

            _listBooks = Query(
                filter: predicate,
                sort: \Book.title,
                order: .forward
            )
        }

        var body: some View {
            List {
                ForEach(listBooks) { book in
                    BookView(book: book)
                }
            }

        }

    }
}

#Preview("No Data") {
    SwiftUI_7_30_View()
        .environment(ApplicationData.shared)
        .modelContainer(for: [Book.self, Author.self], inMemory: true)
}

#Preview("Data", traits: .modifier(PreviewData())) {
    SwiftUI_7_30_View()
        .environment(ApplicationData.shared)
}
