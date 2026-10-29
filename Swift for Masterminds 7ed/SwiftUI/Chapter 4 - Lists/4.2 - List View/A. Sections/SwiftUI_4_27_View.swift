//
//  SwiftUI_4_27_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI

/// Listing 4-27: Configuring the rows from the environment
struct SwiftUI_4_27_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {

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
            }
        }
        .environment(\.defaultMinListRowHeight, 100)
    }
}

#Preview {
    SwiftUI_4_27_View()
        .environment(BookData.shared)
}
