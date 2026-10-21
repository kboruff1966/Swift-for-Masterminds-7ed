//
//  SwiftUI_5_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/19/26.
//

import SwiftUI

/// Listing 5-31: Selecting rows with a navigation link
struct SwiftUI_5_31_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                NavigationLink(
                    destination: { DetailView(book: book) },
                    label: { CellBook(book: book) }
                )
            }
            .navigationTitle(Text("Books"))
        }
    }
}

#Preview {
    SwiftUI_5_31_View()
        .environment(BookData.shared)
}
