//
//  SwiftUI_5_17_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-17: Displaying a search bar
struct SwiftUI_5_17_View: View {

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""

    var body: some View {

        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))

        }
        .searchable(
            text: $searchTerm,
            placement: .navigationBarDrawer,
            prompt: Text("Insert title")
        )

        #if os(iOS)
            .searchToolbarBehavior(.minimize)
        #endif

        .onChange(of: searchTerm, initial: false) { old, value in
            let search = value.trimmingCharacters(in: .whitespaces)
            appData.filterValues(search: search, scope: .title)
        }
    }
}

#Preview {
    SwiftUI_5_17_View()
        .environment(BookDataWithFilter.shared)
}
