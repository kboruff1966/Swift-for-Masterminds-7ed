//
//  SwiftUI_4_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import SwiftUI
import BookData1

/// Listing 4-31: Activating the edit mode
struct SwiftUI_4_31_View: View {
    
    typealias CellBook = BookData1.BookView

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            EditButton()
                .buttonStyle(.glassProminent)
            List {
                ForEach(appData.books) { book in
                    CellBook(book: book)
                }
                .onDelete { indexes in
                    appData.books.remove(atOffsets: indexes)
                }
            }
            .listStyle(.plain)
        }
    }

}

#Preview {
    SwiftUI_4_31_View()
        .environment(BookData.shared)
}
