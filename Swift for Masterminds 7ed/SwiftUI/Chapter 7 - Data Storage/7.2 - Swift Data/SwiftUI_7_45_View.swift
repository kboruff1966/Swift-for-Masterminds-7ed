//
//  SwiftUI_7_45_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/11/26.
//

import BookData_Chap7
import SwiftData
import SwiftUI

struct SwiftUI_7_45_View: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.modelContext) var dbContext

    @Query(sort: \Book.title, sectionBy: \Book.sectionLetter)
    private var listBooks: SectionedResults<Book, String>

    var body: some View {

        @Bindable var appData = appData

        NavigationStack(path: $appData.viewPath) {
            List {
                ForEach(listBooks) { section in
                    Section {
                        ForEach(section) { book in
                            NavigationLink(
                                value: book,
                                label: { BookView(book: book) }
                            )
                        }
                    } header: {
                        Text(section.title)
                            .font(.system(size: 24).bold())
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Books")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(
                        action: {
                            appData.selectedBook = nil
                            appData.viewPath.append("Add Book")
                        },
                        label: {
                            Image(systemName: "plus")
                        }
                    )
                }
            }
            .navigationDestination(
                for: String.self,
                destination: { viewID in
                    if viewID == "Add Book" {
                        AddBookView()
                    } else if viewID == "List Authors" {
                        ListAuthorsView()
                    } else if viewID == "Add Author" {
                        AddAuthorView()
                    }
                }
            )
            .navigationDestination(
                for: Book.self,
                destination: { book in
                    DetailBookView(book: book)
                }
            )
        }
    }

}

#Preview("No Data") {
    SwiftUI_7_45_View()
        .environment(ApplicationData.shared)
        .modelContainer(for: [Book.self, Author.self], inMemory: true)
}

#Preview("Data", traits: .modifier(PreviewData())) {
    SwiftUI_7_45_View()
        .environment(ApplicationData.shared)
}
