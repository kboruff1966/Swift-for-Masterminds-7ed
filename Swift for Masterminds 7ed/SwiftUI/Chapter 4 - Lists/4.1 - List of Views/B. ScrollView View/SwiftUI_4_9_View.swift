//
//  SwiftUI_4_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-9: Adapting the size of the views to the container
struct SwiftUI_4_9_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(appData.books) { book in
                    CellBook(book: book)
                        .containerRelativeFrame(.horizontal)
                }
            }
        }
    }

    struct CellBook: View {

        let book: BookData1.Book

        var body: some View {
            VStack {
                Image(book.cover)
                    .resizable()
                    .scaledToFit()
                Text(book.title)
                    .font(.caption)
            }
            .padding(10)
        }
    }

}

#Preview {
    SwiftUI_4_9_View()
        .environment(BookData.shared)
}
