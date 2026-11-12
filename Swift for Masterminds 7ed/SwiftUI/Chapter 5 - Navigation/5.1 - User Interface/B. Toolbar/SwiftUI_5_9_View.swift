//
//  SwiftUI_5_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/17/26.
//

import BookData1
import SwiftUI

/// Listing 5-9: Creating submenus
struct SwiftUI_5_9_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        NavigationStack {
            List(appData.books) { book in
                BookView(book: book)
            }
            .navigationTitle(Text("Books"))
            .toolbar {
                Menu(
                    content: {
                        Button("Option 1", systemImage: "pencil.circle") {
                            print("Option 1")
                        }
                        Menu("Select") {
                            Button("Option A") { print("Option A") }
                            Button("Option B") { print("Option B") }
                        }
                        Button("Option 3", systemImage: "folder") {
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
    SwiftUI_5_9_View()
        .environment(BookData.shared)
}
