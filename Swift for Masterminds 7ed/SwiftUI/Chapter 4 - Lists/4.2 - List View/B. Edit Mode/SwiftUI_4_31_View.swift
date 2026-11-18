//
//  SwiftUI_4_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/28/26.
//

import BookData1
import SwiftUI

/// Listing 4-31: Activating the edit mode
struct SwiftUI_4_31_View: View {

    @Environment(BookData.self) private var appData

    #if os(macOS)
        @State private var selection = Set<Book.ID>()
    #endif

    var body: some View {
        VStack {
            #if os(iOS)
                EditButton()
                    .buttonStyle(.glassProminent)
            #elseif os(macOS)
                // macOS has no EditButton/EditMode; delete the selected rows instead
                Button("Delete", systemImage: "trash", role: .destructive) {
                    deleteSelected()
                }
                .buttonStyle(.glassProminent)
                .disabled(selection.isEmpty)
            #endif

            #if os(macOS)
                List(selection: $selection) {
                    ForEach(appData.books) { book in
                        BookView(book: book)
                    }
                    .onDelete { indexes in
                        appData.books.remove(atOffsets: indexes)
                    }
                }
                .listStyle(.plain)
                // Delete key / Edit ▸ Delete menu item
                .onDeleteCommand {
                    deleteSelected()
                }
                // Right-click menu on a row (or on the current selection)
                .contextMenu(forSelectionType: Book.ID.self) { ids in
                    Button("Delete", role: .destructive) {
                        appData.books.removeAll { ids.contains($0.id) }
                        selection.subtract(ids)
                    }
                }
            #else
                List {
                    ForEach(appData.books) { book in
                        BookView(book: book)
                    }
                    .onDelete { indexes in
                        appData.books.remove(atOffsets: indexes)
                    }
                }
                .listStyle(.plain)
            #endif
        }
    }

    #if os(macOS)
        private func deleteSelected() {
            appData.books.removeAll { selection.contains($0.id) }
            selection.removeAll()
        }
    #endif
}

#Preview {
    SwiftUI_4_31_View()
        .environment(BookData.shared)
}
