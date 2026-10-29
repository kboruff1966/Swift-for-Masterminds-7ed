//
//  SwiftUI_4_32_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import SwiftUI

/// Listing 4-32: Moving rows
struct SwiftUI_4_32_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        VStack {
            EditButton()
                .buttonStyle(.glassProminent)
            List {
                ForEach(appData.userData) { book in
                    CellBook(book: book)
                }
                .onDelete { indexes in
                    appData.userData.remove(atOffsets: indexes)
                }
                .onMove { source, destination in
                    appData.userData.move(
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
