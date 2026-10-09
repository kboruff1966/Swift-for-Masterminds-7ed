//
//  SwiftUI_4_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

/// Listing 4-23: Customizing the rows
struct SwiftUI_4_23_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List(appData.userData) { book in
            CellBook(book: book)
                .listRowInsets(
                    EdgeInsets(
                        top: 0,
                        leading: 0,
                        bottom: 10,
                        trailing: 0
                    )
                )
                .listRowBackground(Color(white: 0.95))
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
    }
}

#Preview {
    SwiftUI_4_23_View()
        .environment(BookData.shared)
}
