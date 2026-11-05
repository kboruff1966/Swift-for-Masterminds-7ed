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

    @Environment(BookData.self) private var appData
    @State private var selectedRow: Book.ID? = nil

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
                    .disabled(selectedRow == nil ? true : false)
                    .buttonStyle(.glass)
                }

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
        appData.userData.removeAll(where: { $0.id == selectedRow })
        selectedRow = nil
    }
}

#Preview {
    SwiftUI_4_33_View()
        .environment(BookData.shared)
}
