//
//  SwiftUI_5_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import SwiftUI

/// Listing 5-8: Creating a popup menu
struct SwiftUI_5_8_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.userData) { book in
                CellBook(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                Menu(
                    content: {
                        Button(
                            "Option 1",
                            systemImage: "pencil.circle"
                        ) {
                            print("Option 1")
                        }

                        Button(
                            "Option 2",
                            systemImage: "trash"
                        ) {
                            print("Option 2")
                        }

                        Button(
                            "Option 3",
                            systemImage: "folder"
                        ) {
                            print("Option 3")
                        }
                    },
                    label: {
                        Image(systemName: "filemenu.and.selection")
                    }
                )
            }
        }
    }
}

#Preview {
    SwiftUI_5_8_View()
        .environment(BookData.shared)
}
