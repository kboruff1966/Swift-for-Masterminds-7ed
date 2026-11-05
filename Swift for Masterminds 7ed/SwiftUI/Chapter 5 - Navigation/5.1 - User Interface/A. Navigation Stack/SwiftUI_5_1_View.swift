//
//  SwiftUI_5_1_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI
import BookData1

/// Listing 5-1: Initiating a navigation stack
struct SwiftUI_5_1_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
        }
    }

}

#Preview {
    SwiftUI_5_1_View()
        .environment(BookData.shared)
}
