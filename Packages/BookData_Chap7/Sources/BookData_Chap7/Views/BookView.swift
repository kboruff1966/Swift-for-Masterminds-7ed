//
//  CellBook.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/9/26.
//

import SwiftUI
import SwiftData

public struct BookView: View {

    let book: Book

    public init(book: Book) {
        self.book = book
    }

    public var body: some View {
        HStack(alignment: .top) {
            Image(uiImage: book.displayCover)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
            VStack(alignment: .leading, spacing: 2) {
                Text(book.title)
                    .bold()
                Text(book.author?.name ?? "Undefined")
                Text(book.displayYear)
                    .font(.caption)
                Spacer()
            }

            Spacer()
        }
        .padding([.top], 10)
    }
}

#Preview(traits: .modifier(PreviewData())) {

    @Previewable @Query var listBooks: [Book]
    NavigationStack {
        BookView(book: listBooks[0])
            .environment(ApplicationData.shared)
    }
}
