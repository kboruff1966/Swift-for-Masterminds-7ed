//
//  SwiftUI_4_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import BookData1
import SwiftUI

/// Listing 4-21: Creating a list of views with the List view
struct SwiftUI_4_21_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List(appData.books) { book in
            BookView(book: book)
        }
        // Listing 4-22: Creating a plain list
        // .listStyle(.plain)
    }
}

#Preview {
    SwiftUI_4_21_View()
        .environment(BookData.shared)
}
