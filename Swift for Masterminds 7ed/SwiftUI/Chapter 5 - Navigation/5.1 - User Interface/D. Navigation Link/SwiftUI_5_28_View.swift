//
//  SwiftUI_5_28_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/19/26.
//

import BookData1
import SwiftUI

/// Listing 5-28: Including a navigation link
struct SwiftUI_5_28_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.books) { book in
                BookView(book: book)
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
    SwiftUI_5_28_View()
        .environment(BookData.shared)
}
