//
//  SwiftUI_5_6_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-6: Adding buttons to the bottom toolbar
struct SwiftUI_5_6_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            #if os(iOS)
                .toolbar(.hidden, for: .navigationBar)
                .toolbar {
                    ToolbarSpacer(.flexible, placement: .bottomBar)
                    ToolbarItem(placement: .bottomBar) {
                        Button("Show") {
                            print("Show Values")
                        }
                    }
                }
            #else
                // macOS has no bottom bar, so the button goes in the window toolbar.
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button("Show") {
                            print("Show Values")
                        }
                    }
                }
            #endif
        }
    }
}

#Preview {
    SwiftUI_5_6_View()
        .environment(BookData.shared)
}
