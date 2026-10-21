//
//  SwiftUI_5_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-12: Hiding a toolbar item
struct SwiftUI_5_12_View: View {

    @Environment(BookData.self) private var appData

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
                        action: {
                            print("Archive")
                        }
                    )
                    Button(
                        "Send",
                        systemImage: "envelope",
                        action: { print("Message") }
                    )

                    Button(
                        "Delete",
                        systemImage: "trash",
                        action: { print("Delete") }
                    )

                }

                // ToolbarOverflowMenu is unavailable in macOS
                #if !os(macOS)
                    ToolbarOverflowMenu {
                        Button(
                            "Shop",
                            systemImage: "cart",
                            action: { print("Shop") }
                        )

                        Button(
                            "Walk",
                            systemImage: "figure.walk",
                            action: { print("Walk") }
                        )

                        Button(
                            "Beach",
                            systemImage: "sun.max.fill",
                            action: { print("Beach") }
                        )

                    }

                #else

                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button(
                            "Shop",
                            systemImage: "cart",
                            action: { print("Shop") }
                        )

                        Button(
                            "Walk",
                            systemImage: "figure.walk",
                            action: { print("Walk") }
                        )

                        Button(
                            "Beach",
                            systemImage: "sun.max.fill",
                            action: { print("Beach") }
                        )
                    }

                #endif
            }
        }
    }
}

#Preview {
    SwiftUI_5_12_View()
        .environment(BookData.shared)
}
