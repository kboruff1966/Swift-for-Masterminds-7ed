//
//  SwiftUI_4_33_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI
import BookData1

/// Listing 4-33: Selecting a row
struct SwiftUI_4_33_View: View {
    
    typealias CellBook = BookData1.BookView

    @Environment(BookData.self) private var appData
    @State private var selectedRow: Book.ID? = nil

    /// True when no row is selected, used to disable the trash button.
    private var isSelectionEmpty: Bool {
        selectedRow == nil
    }

    var body: some View {

        VStack {
            List(selection: $selectedRow) {
                HStack {
                    Spacer()
                    Button(
                        action: {
                            removeSelected()
                        },
                        label: {
                            Image(systemName: "trash")
                        }
                    )
                    .disabled(isSelectionEmpty)
                    .buttonStyle(.glass)
                }

                Section(header: Text("Statistics")) {
                    HStack {
                        Text("Total Books:")
                        Spacer()
                        Text("\(appData.books.count)")
                    }
                }

                Section(header: Text("My Books")) {

                    ForEach(appData.books) { book in
                        CellBook(book: book)
                    }
                    .onDelete { indexes in
                        appData.books.remove(atOffsets: indexes)
                    }
                    .onMove { source, destination in
                        appData.books.move(
                            fromOffsets: source,
                            toOffset: destination
                        )
                    }
                }
            }
        }
    }

    func removeSelected() {
        appData.books.removeAll(where: { $0.id == selectedRow })
        selectedRow = nil
    }
}

#Preview {
    SwiftUI_4_33_View()
        .environment(BookData.shared)
}
