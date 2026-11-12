//
//  SwiftUI_4_21_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import BookData1
import SwiftUI

/// Listing 4-24: Mixing static and dynamic content in a list
struct SwiftUI_4_24_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {

            HStack {
                Image(systemName: "book.circle").font(.largeTitle)
                Spacer()
                Text("My Favorite Books")
                    .font(.headline)
            }
            .frame(height: 50)

            ForEach(appData.books) { book in
                BookView(book: book)
            }
        }
        .listStyle(.plain)
    }
}

#Preview {
    SwiftUI_4_24_View()
        .environment(BookData.shared)
}
