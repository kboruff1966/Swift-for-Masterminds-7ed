//
//  SwiftUI_7_36_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/9/26.
//

import BookData_Chap7
import SwiftData
import SwiftUI

/// Listing 7-36: Preparing the selectedBook property to add new books
struct SwiftUI_7_36_View: View {

    @Environment(ApplicationData.self) private var appData

    @Environment(\.modelContext) private var dbContext

    @Query private var listBooks: [Book]

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
            List {
                ForEach(listBooks) { book in
                    NavigationLink(
                        value: book,
                        label: {
                            BookView(book: book)
                        }
                    )
                }
            }
            .listStyle(.plain)
            .navigationTitle("Books")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(
                        "Add Book",
                        systemImage: "plus",
                        action: {
                            appData.selectedBook = nil
                            appData.viewPath.append("Add Book")
                        }
                    )
                }
            }
            .navigationDestination(
                for: String.self,
                destination: {
                    viewID in

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
            .navigationDestination(
                for: Book.self,
                destination: {
                    book in DetailBookView(book: book)
                }
            )
        }

    }
}

#Preview("No Data") {
    SwiftUI_7_36_View()
        .environment(ApplicationData.shared)
        .modelContainer(for: [Book.self, Author.self], inMemory: true)
}

#Preview("Data", traits: .modifier(PreviewData())) {
    SwiftUI_7_36_View()
        .environment(ApplicationData.shared)
}
