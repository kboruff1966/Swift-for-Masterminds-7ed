//
//  SwiftUI_4_26_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import BookData1
import SwiftUI

/// Listing 4-26: Configuring the section separators
struct SwiftUI_4_26_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {
            Section(header: Text("Statistics")) {
                HStack {
                    Text("Total Books:")
                    Spacer()
                    Text(String(appData.books.count))
                }
            }
            .listSectionSeparator(.hidden, edges: .top)
            .listSectionSeparatorTint(.blue)

            Section(header: Text("My Books")) {
                ForEach(appData.books) { book in
                    BookView(book: book)
                }
            }
            .listSectionSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    SwiftUI_4_26_View()
        .environment(BookData.shared)
}
