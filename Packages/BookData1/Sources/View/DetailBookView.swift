//
//  DetailView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

public struct DetailBookView: View {

    let book: Book

    public init(book: Book) {
        self.book = book
    }

    public var body: some View {

        VStack {
            Text(book.title)
                .font(.title)
            Text(book.author)
            Image(book.cover, bundle: .module)
                .resizable()
                .scaledToFit()
        }
        .padding()
        .navigationTitle("Book")
        .toolbarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        DetailBookView(book: BookData.shared.books[0])
    }
}
