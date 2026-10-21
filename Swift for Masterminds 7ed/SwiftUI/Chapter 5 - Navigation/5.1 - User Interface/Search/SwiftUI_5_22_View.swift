//
//  SwiftUI_5_22_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/18/26.
//

import SwiftUI

/// Listing 5-22: Suggesting terms to the user
struct SwiftUI_5_22_View: View {

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""

    var body: some View {

        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
        }
        .searchable(text: $searchTerm, prompt: Text("Insert title"))
        .searchSuggestions {
            ForEach(appData.filteredItems) { item in

                //                CellBook(book: item)
                //                    .searchCompletion(item.title)

                Text("\(item.title) - \(item.author)")
                    .searchCompletion(item.title)
            }
        }
        .onChange(of: searchTerm, initial: false) { old, value in
            let search = value.trimmingCharacters(in: .whitespaces)
            appData.filterValues(search: search, scope: .title)
        }

    }
}

#Preview {
    SwiftUI_5_22_View()
        .environment(BookDataWithFilter.shared)
}
