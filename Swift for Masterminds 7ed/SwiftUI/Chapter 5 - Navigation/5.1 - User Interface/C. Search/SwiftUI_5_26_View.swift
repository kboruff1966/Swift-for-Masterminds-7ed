//
//  SwiftUI_5_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/18/26.
//

import SwiftUI
import BookData2

struct AuthorToken: Identifiable, Equatable {
    let id = UUID()
    let name: String
}

/// Listing 5-26: Adding tokens
struct SwiftUI_5_26_View: View {

    @Environment(BookData.self) private var appData

    @State private var searchTerm: String = ""
    @State private var searchTokens: [AuthorToken] = []

    var body: some View {

        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook2(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {

                let list = appData.userData.map { $0.author }
                let authors = Set(list).sorted()

                Menu(
                    content: {
                        ForEach(authors, id: \.self) { author in
                            Button(author) {
                                let token = AuthorToken(name: author)
                                searchTokens = [token]
                            }
                        }
                    },
                    label: {
                        Image(systemName: "pencil.circle")
                    }
                )
            }
            .searchable(
                text: $searchTerm,
                tokens: $searchTokens,
                token: { token in
                    Text(token.name)
                }
            )
        }
        .onChange(of: searchTerm, initial: false) { _, _ in
            performSearch()
        }
        .onChange(of: searchTokens, initial: false) { _, _ in
            performSearch()
        }

    }

    func performSearch() {
        let search = searchTerm.trimmingCharacters(in: .whitespaces)
        appData.filterValues(
            search: search,
            author: searchTokens.first?.name ?? ""
        )
    }
}

#Preview {
    SwiftUI_5_26_View()
        .environment(BookData.shared)
}
