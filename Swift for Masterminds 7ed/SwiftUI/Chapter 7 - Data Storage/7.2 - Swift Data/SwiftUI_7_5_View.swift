//
//  SwiftUI_7_5_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/6/26.
//

import BookData_Chap7
import SwiftData
import SwiftUI

/// Listing 7-5: Fetching books from the database
struct SwiftUI_7_5_View: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.modelContext) var dbContext

    //    @Query(sort: \Book.title, order: .reverse)
    //    private var listBooks: [Book]

    //    @Query(
    //        filter: #Predicate<Book> { $0.year > 2000 },
    //        sort: \Book.title,
    //        order: .reverse
    //    )
    //    private var listBooks: [Book]

    @Query
    private var listBooks: [Book]

    init() {
        _listBooks = Query(sort: \Book.title, order: .reverse)
    }

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
            List {
                ForEach(listBooks) { book in
                    BookView(book: book)
                }
                .onDelete { indexes in

                    for index in indexes {
                        dbContext.delete(listBooks[index])
                    }

                    try? dbContext.save()
                }
            }
            .listStyle(.plain)
            .navigationTitle("Books")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(
                        value: "Add Book",
                        label: {
                            Image(systemName: "plus")
                        }
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
        }
    }
}

#Preview("No Data") {
    SwiftUI_7_5_View()
        .environment(ApplicationData.shared)
        .modelContainer(for: [Book.self, Author.self], inMemory: true)
}

#Preview("Data", traits: .modifier(PreviewData())) {
    SwiftUI_7_5_View()
        .environment(ApplicationData.shared)
}
