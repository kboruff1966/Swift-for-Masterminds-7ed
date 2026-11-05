//
//  SwiftUI_5_23_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/18/26.
//

import SwiftUI
import BookData2

/// Listing 5-23: Cancelling the search programmatically
struct SwiftUI_5_23_View: View {

    @Environment(BookData.self) private var appData
    @State private var searchTerm: String = ""

    var body: some View {
        NavigationStack {
            SearchableView()
                .navigationTitle(Text("Books"))
                .searchable(text: $searchTerm, prompt: Text("Insert title"))
        }
        .onChange(of: searchTerm, initial: false) { old, value in
            let search = value.trimmingCharacters(in: .whitespaces)
            appData.filterValues(search: search, scope: .title)
        }
    }

}

struct SearchableView: View {

    @Environment(BookData.self) private var appData

    @Environment(\.isSearching) var isSearching
    @Environment(\.dismissSearch) var dismissSearch

    var body: some View {
        List(appData.filteredItems) { book in
            CellBook(book: book)
                .background(.white)
                .onTapGesture {
                    if isSearching {
                        dismissSearch()
                    }
                }
        }
    }
}

#Preview {
    SwiftUI_5_23_View()
        .environment(BookData.shared)
}
