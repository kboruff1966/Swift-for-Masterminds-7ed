//
//  DetailView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

struct DetailView: View {

    let book: Book

    var body: some View {

        VStack {
            Text(book.title)
                .font(.title)
            Text(book.author)
            Image(book.cover)
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
        DetailView(book: BookData.shared.userData[0])
    }
}
