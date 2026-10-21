//
//  SwiftUI_5_4_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-4: Adding multiple buttons to a toolbar
struct SwiftUI_5_4_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {

                ToolbarItem(placement: .automatic) {
                    Button(
                        "Save",
                        systemImage: "folder",
                        action: {
                            print("Save")
                        }
                    )
                }

                ToolbarSpacer(.fixed, placement: .automatic)

                ToolbarItem(placement: .automatic) {
                    Button(
                        "Send",
                        systemImage: "envelope",
                        action: {
                            print("Send Message")
                        }
                    )
                }
            }

        }
    }

}

#Preview {
    SwiftUI_5_4_View()
        .environment(BookData.shared)
}
