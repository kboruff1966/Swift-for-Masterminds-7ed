//
//  SwiftUI_7_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/8/26.
//

import BookData_Chap7
import SwiftData
import SwiftUI

/// Listing 7-29: Defining a dynamic query
struct SwiftUI_7_29_View: View {

    @Environment(ApplicationData.self) private var appData

    //    @Environment(\.modelContext) private var dbContext

    @State private var orderBooks = SortOrder.forward

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {

            ListBooksView(orderBooks: orderBooks)
                .listStyle(.plain)
                .navigationTitle("Books")
                .toolbarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(
                            "Sort",
                            systemImage: "gear",
                            action: {
                                orderBooks =
                                    orderBooks == .forward
                                    ? .reverse
                                    : .forward
                            }
                        )
                    }
                    ToolbarSpacer(placement: .topBarTrailing)
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

    struct ListBooksView: View {

        @Query var listBooks: [Book]

        init(orderBooks: SortOrder) {
            _listBooks = Query(sort: \Book.title, order: orderBooks)
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
    SwiftUI_7_29_View()
        .environment(ApplicationData.shared)
        .modelContainer(for: [Book.self, Author.self], inMemory: true)
}

#Preview("Data", traits: .modifier(PreviewData())) {
    SwiftUI_7_29_View()
        .environment(ApplicationData.shared)
}
