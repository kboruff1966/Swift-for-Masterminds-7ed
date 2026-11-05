//
//  SwiftUI_4_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI
import BookData1

/// Listing 4-30: Deleting rows
struct SwiftUI_4_30_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {
            ForEach(appData.userData) { book in
                CellBook(book: book)
            }
            .onDelete { indexes in
                appData.userData.remove(atOffsets: indexes)
            }
        }
    }

}

#Preview {
    SwiftUI_4_30_View()
        .environment(BookData.shared)
}
