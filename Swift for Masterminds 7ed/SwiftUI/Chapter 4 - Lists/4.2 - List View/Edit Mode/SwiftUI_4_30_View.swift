//
//  SwiftUI_4_29_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI

/// Listing 4-30: Deleting rows
struct SwiftUI_4_30_View: View {

    @Environment(BookData.self) private var appData
  
    var body: some View {

        VStack {

            EditButton()
                .buttonStyle(.glassProminent)

            List {

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
//            .listStyle(.plain)
        }
    }
}

#Preview {
    SwiftUI_4_30_View()
        .environment(BookData.shared)
}
