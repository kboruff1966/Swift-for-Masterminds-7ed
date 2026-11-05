//
//  SwiftUI_4_39_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/9/26.
//

import SwiftUI
import BookData1

/// Listing 4-39: Refreshing the list
struct SwiftUI_4_39_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {
            ForEach(appData.userData) { book in
                CellBook(book: book)
            }
        }
        .listStyle(.plain)
        .refreshable {
            sleep(3)
            print("Loading values")
        }
    }
}

#Preview {
    SwiftUI_4_39_View()
        .environment(BookData.shared)
}
