//
//  SwiftUI_5_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/19/26.
//

import SwiftUI

/// Listing 5-28: Including a navigation link
struct SwiftUI_5_25_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    NavigationLink(
                        destination: { SettingsView() },
                        label: { Image(systemName: "gearshape") }
                    )
                }
            }
        }
    }
}

#Preview {
    SwiftUI_5_25_View()
        .environment(BookData.shared)
}
