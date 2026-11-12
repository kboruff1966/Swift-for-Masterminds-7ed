//
//  SwiftUI_4_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-8: Scrolling the list of views horizontally
struct SwiftUI_4_8_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(appData.books) { book in
                    CellBook(book: book)
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
                    .frame(width: 80, height: 100)
                Text(book.title)
                    .font(.caption)
            }
            .padding(10)
            .frame(width: 100, height: 150)
        }
    }

}

#Preview {
    SwiftUI_4_8_View()
        .environment(BookData.shared)
}
