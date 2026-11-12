//
//  SwiftUI_4_27_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import BookData1
import SwiftUI

/// Listing 4-27: Configuring the rows from the environment
struct SwiftUI_4_27_View: View {

    typealias CellBook = BookData1.BookView

    @Environment(BookData.self) private var appData

    var body: some View {

        List {
            Section {
                HStack {
                    Text("Total Books:")
                    Spacer()
                    Text("\(appData.books.count)")
                }
            } header: {
                Text("Statistics")
            }

            Section {
                ForEach(appData.books) { book in
                    CellBook(book: book)
                }
            } header: {
                Text("My Books")
            }
        }
        .environment(\.defaultMinListRowHeight, 100)
    }
}

#Preview {
    SwiftUI_4_27_View()
        .environment(BookData.shared)
}
