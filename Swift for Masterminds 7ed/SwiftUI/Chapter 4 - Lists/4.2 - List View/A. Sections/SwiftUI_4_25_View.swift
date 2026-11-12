//
//  SwiftUI_4_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import BookData1
import SwiftUI

/// Listing 4-25: Dividing the content into sections
struct SwiftUI_4_25_View: View {

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
            .headerProminence(.increased)

            Section {
                ForEach(appData.books) { book in
                    BookView(book: book)
                }
            } header: {
                Text("My Books")
            }
            .headerProminence(.increased)
        }

    }
}

#Preview {
    SwiftUI_4_25_View()
        .environment(BookData.shared)
}
