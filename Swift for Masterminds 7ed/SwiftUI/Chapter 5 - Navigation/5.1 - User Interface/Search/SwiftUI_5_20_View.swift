//
//  SwiftUI_5_20_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-20: Activating the search field
struct SwiftUI_5_20_View: View {

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""
    
    @FocusState private var isFocused: Bool

    var body: some View {
        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbarTitleDisplayMode(.inlineLarge)
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button("Search") { isFocused = true }
                }
            }
        }
        .searchable(
            text: $searchTerm,
            placement: .automatic,
            prompt: Text("Insert title")
        )
        .searchFocused($isFocused)
        .onChange(of: searchTerm, initial: false) { old, value in
            let search = value.trimmingCharacters(in: .whitespaces)
            appData.filterValues(search: search, scope: .title)
        }
    }
}

#Preview {
    SwiftUI_5_20_View()
        .environment(BookDataWithFilter.shared)
}
