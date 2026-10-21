//
//  SwiftUI_5_24_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/18/26.
//

import SwiftUI

/// Listing 5-24: Adding scope buttons
struct SwiftUI_5_24_View: View {

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""
    @State private var searchScope: Scopes = .title

    var body: some View {
        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
        }
        .searchable(text: $searchTerm, prompt: Text("Insert title"))
        .searchScopes(
            $searchScope,
            scopes: {
                Text("Title")
                    .tag(Scopes.title)
                Text("Author")
                    .tag(Scopes.author)
            }
        )
        .onChange(of: searchTerm, initial: false) { _, _ in
            performSearch()
        }
        .onChange(of: searchScope, initial: false) { _, _ in
            performSearch()
        }
    }

    func performSearch() {
        let search = searchTerm.trimmingCharacters(in: .whitespaces)
        appData.filterValues(search: search, scope: searchScope)
    }
}

#Preview {
    SwiftUI_5_24_View()
        .environment(BookDataWithFilter.shared)
}
