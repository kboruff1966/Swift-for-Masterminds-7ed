//
//  SwiftUI_4_34_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import BookData1
import SwiftUI

/// Listing 4-34: Selecting multiple rows
struct SwiftUI_4_34_View: View {

    @Environment(BookData.self) private var appData
    @State private var selectedRows: Set<Book.ID> = []

    var body: some View {

        VStack {
            List(selection: $selectedRows) {
                HStack {

                    EditButton()
                        .buttonStyle(.glassProminent)

                    Spacer()
                    Button(
                        action: {
                            removeSelected()
                        },
                        label: {
                            Image(systemName: "trash")
                        }
                    )
                    .disabled(selectedRows.isEmpty)
                }
                .padding()

                Section(header: Text("Statistics")) {
                    HStack {
                        Text("Total Books:")
                        Spacer()
                        Text("\(appData.books.count)")
                    }
                }

                Section(header: Text("My Books")) {

                    ForEach(appData.books) { book in
                        BookView(book: book)
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

        // Convert selected IDs to indices
        let indices = selectedRows.compactMap { id in
            appData.books.firstIndex(where: { $0.id == id })
        }

        let indexSet = IndexSet(indices)

        appData.books.remove(atOffsets: indexSet)
        selectedRows.removeAll()
    }

}

#Preview {
    SwiftUI_4_34_View()
        .environment(BookData.shared)
}
