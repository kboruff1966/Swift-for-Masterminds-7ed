//
//  SwiftUI_4_32_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import BookData1
import SwiftUI

/// Listing 4-32: Moving rows
struct SwiftUI_4_32_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            #if os(iOS)
            EditButton()
                .buttonStyle(.glassProminent)
            #endif
            List {
                ForEach(appData.books) { book in
                    BookView(book: book)
                }
                .onDelete { indexes in
                    appData.books.remove(atOffsets: indexes)
                }
                .onMove { source, destination in
                    appData.books.move(
                        fromOffsets: source,
                        toOffset: destination
                    )
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    SwiftUI_4_32_View()
        .environment(BookData.shared)
}
