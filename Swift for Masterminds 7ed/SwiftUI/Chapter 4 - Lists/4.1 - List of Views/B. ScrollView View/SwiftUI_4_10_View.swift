//
//  SwiftUI_4_10_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI
import BookData1

/// Listing 4-10: Scrolling the content page by page
struct SwiftUI_4_10_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(appData.userData) { book in
                    CellBook(book: book)
                        .containerRelativeFrame(.horizontal)
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }

    struct CellBook: View {

        let book: Book

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
    SwiftUI_4_10_View()
        .environment(BookData.shared)
}
