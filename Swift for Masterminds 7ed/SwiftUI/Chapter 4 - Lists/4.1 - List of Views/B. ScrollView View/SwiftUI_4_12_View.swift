//
//  SwiftUI_4_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/27/26.
//

import SwiftUI

/// Listing 4-12: Defining each view as a scroll target
struct SwiftUI_4_12_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 0) {
                ForEach(appData.userData) { book in
                    CellBook(book: book)
                        .containerRelativeFrame(
                            .horizontal,
                            count: 2,
                            span: 1,
                            spacing: 0
                        )
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
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
    SwiftUI_4_12_View()
        .environment(BookData.shared)
}
