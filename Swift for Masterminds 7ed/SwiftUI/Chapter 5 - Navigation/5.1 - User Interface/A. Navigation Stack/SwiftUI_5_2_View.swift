//
//  SwiftUI_5_2_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import BookData1
import SwiftUI

/// Listing 5-2: Setting the title mode
struct SwiftUI_5_2_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.books) { book in
                BookView(book: book)
            }
            .listStyle(.plain)
            .navigationTitle(Text("Books"))
            .navigationSubtitle("My List of Books")
            .toolbarTitleDisplayMode(.inlineLarge)
        }
    }
}

#Preview {
    SwiftUI_5_2_View()
        .environment(BookData.shared)
}
