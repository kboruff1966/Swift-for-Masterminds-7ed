//
//  SwiftUI_5_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-10: Changing the visibility priority of a toolbar item
struct SwiftUI_5_10_View: View {

    @Environment(BookData.self) private var appData

    /// The top bar placements only exist on iOS and visionOS, so macOS
    /// uses the primary action placement instead.
    private var shopPlacement: ToolbarItemPlacement {
        #if os(macOS)
        .primaryAction
        #else
        .topBarPinnedTrailing
        #endif
    }

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                ToolbarItemGroup {
                    Button(
                        "Archive",
                        systemImage: "archivebox",
                        action: { print("Archive") }
                    )
                    Button(
                        "Send",
                        systemImage: "envelope",
                        action: { print("Message") }
                    )
                    Button(
                        "Save",
                        systemImage: "externaldrive",
                        action: { print("Store") }
                    )
                    Button(
                        "Input",
                        systemImage: "tray",
                        action: { print("Input") }
                    )
                    Button(
                        "Output",
                        systemImage: "paperplane",
                        action: { print("Output") }
                    )
                    Button(
                        "Open",
                        systemImage: "folder",
                        action: { print("Open") }
                    )
                }

                ToolbarItem(placement: shopPlacement) {
                    Button(
                        "Shop",
                        systemImage: "cart",
                        action: { print("Shop") }
                    )
                }
                .visibilityPriority(.high)
            }
        }
    }
}

#Preview {
    SwiftUI_5_10_View()
        .environment(BookData.shared)
}
