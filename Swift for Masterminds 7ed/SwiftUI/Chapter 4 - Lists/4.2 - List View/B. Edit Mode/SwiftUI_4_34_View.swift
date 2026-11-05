//
//  SwiftUI_4_34_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI
import BookData1

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
                        Text("\(appData.userData.count)")
                    }
                }

                Section(header: Text("My Books")) {

                    ForEach(appData.userData) { book in
                        CellBook(book: book)
                    }
                    .onDelete { indexes in
                        appData.userData.remove(atOffsets: indexes)
                    }
                    .onMove { source, destination in
                        appData.userData.move(
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
            appData.userData.firstIndex(where: { $0.id == id })
        }

        let indexSet = IndexSet(indices)

        appData.userData.remove(atOffsets: indexSet)
        selectedRows.removeAll()
    }

}

#Preview {
    SwiftUI_4_34_View()
        .environment(BookData.shared)
}
