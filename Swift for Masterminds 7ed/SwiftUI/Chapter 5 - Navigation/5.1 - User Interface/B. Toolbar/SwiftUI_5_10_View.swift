//
//  SwiftUI_5_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

enum CartViewVariation {
    case Listing_5_10
    case Listing_5_11
    //    case Listing_5_12
}

/// Listing 5-10: Changing the visibility priority of a toolbar item
struct SwiftUI_5_10_View: View {

    @Environment(BookData.self) private var appData

    let cartVariation = CartViewVariation.Listing_5_10

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

                switch cartVariation {
                case .Listing_5_10:
                    ToolbarItem {
                        Button(
                            "Shop",
                            systemImage: "cart",
                            action: { print("Shop") }
                        )
                    }
                    .visibilityPriority(.high)

                /// Listing 5-11: Displaying a toolbar item on the trailing side
                case .Listing_5_11:
                    ToolbarItem(placement: .topBarPinnedTrailing) {
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
}

#Preview {
    SwiftUI_5_10_View()
        .environment(BookData.shared)
}
