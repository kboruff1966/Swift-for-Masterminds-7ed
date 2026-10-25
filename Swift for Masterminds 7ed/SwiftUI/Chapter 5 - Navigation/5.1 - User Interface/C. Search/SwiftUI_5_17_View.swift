//
//  SwiftUI_5_17_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-17: Displaying a search bar
struct SwiftUI_5_17_View: View {

    /// The search bar variations this view can display.
    enum SearchStyle {
        /// Listing 5-17: Displaying a search bar
        case standard
        /// Listing 5-18: Moving the search bar to the navigation bar
        case navigationBarDrawer
        /// Listing 5-19: Minimizing the search bar
        case minimized
    }

    @Environment(BookDataWithFilter.self) private var appData
    @State private var searchTerm: String = ""

    /// The variation to display. Set it when creating the view.
    let searchStyle: SearchStyle = .minimized

    var body: some View {
        NavigationStack {
            List(appData.filteredItems) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
        }
        .modifier(SearchModifier(text: $searchTerm, style: searchStyle))
        .onChange(of: searchTerm, initial: false) { old, value in
            let search = value.trimmingCharacters(in: .whitespaces)
            appData.filterValues(search: search, scope: .title)
        }
    }
}

/// Applies the search bar variation selected by the view.
private struct SearchModifier: ViewModifier {

    @Binding var text: String
    let style: SwiftUI_5_17_View.SearchStyle

    @ViewBuilder
    func body(content: Content) -> some View {
        switch style {
        case .standard:
            content
                .searchable(text: $text, prompt: Text("Insert title"))
        case .navigationBarDrawer:
            content
                .searchable(
                    text: $text,
                    placement: .navigationBarDrawer,
                    prompt: Text("Insert title")
                )
        case .minimized:
            content
                .searchable(text: $text, prompt: Text("Insert title"))
                .searchToolbarBehavior(.minimize)
        }
    }
}

#Preview {
    SwiftUI_5_17_View()
        .environment(BookDataWithFilter.shared)
}
