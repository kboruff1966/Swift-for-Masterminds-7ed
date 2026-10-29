//
//  SwiftUI_4_35_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI

/// Listing 4-35: Customizing the edit mode
struct SwiftUI_4_35_View: View {

    @Environment(BookData.self) private var appData
    @State private var selectedRows: Set<Book.ID> = []
    @State private var editActive = false

    var editMode: EditMode {
        editActive ? .active : .inactive
    }

    var editButtonText: String {
        editActive ? "Done" : "Edit"
    }

    var body: some View {

        VStack {

            List(selection: $selectedRows) {

                HStack {

                    Button(editButtonText) {
                        editActive.toggle()
                    }
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
                        removeSelected()
                        editActive = false
                    }
                    .onMove { source, destination in
                        appData.userData.move(
                            fromOffsets: source,
                            toOffset: destination
                        )
                    }
                }
            }
            .environment(\.editMode, .constant(editMode))
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
    SwiftUI_4_35_View()
        .environment(BookData.shared)
}
