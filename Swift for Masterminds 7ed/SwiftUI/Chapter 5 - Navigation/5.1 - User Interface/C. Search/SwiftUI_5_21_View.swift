//
//  SwiftUI_5_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/18/26.
//

import SwiftUI

/// Listing 5-21: Performing the search only when the Return/Done key is pressed
struct SwiftUI_5_21_View: View {

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""

    var body: some View {
        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .searchable(text: $searchTerm, prompt: Text("Insert title"))
        }
        .onSubmit(of: .search) {
            print("onSubmit")
            performSearch()
        }
        .onChange(of: searchTerm, initial: false) { old, value in
            if value.isEmpty {
                print("onChange")
                performSearch()
            }
        }
    }

    func performSearch() {
        let search = searchTerm.trimmingCharacters(in: .whitespaces)
        appData.filterValues(search: search, scope: .title)
    }
}

#Preview {
    SwiftUI_5_21_View()
        .environment(BookDataWithFilter.shared)
}
