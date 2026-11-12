//
//  SwiftUI_4_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import BookData1
import SwiftUI

/// Listing 4-30: Deleting rows
struct SwiftUI_4_30_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {
            ForEach(appData.books) { book in
                BookView(book: book)
            }
            .onDelete { indexes in
                appData.books.remove(atOffsets: indexes)
            }
        }
    }

}

#Preview {
    SwiftUI_4_30_View()
        .environment(BookData.shared)
}
