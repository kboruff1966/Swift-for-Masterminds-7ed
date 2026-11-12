//
//  CellBook3.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/5/26.
//

import SwiftUI

public struct BookView: View {

    let book: Book
    
    public init(book: Book) {
        self.book = book
    }

    public var body: some View {
        HStack(alignment: .top) {
            
            Image(book.cover, bundle: .module)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 100)
            VStack(alignment: .leading, spacing: 2) {
                Text(book.title)
                    .bold()
                Text(book.author)
                Text(book.displayYear)
                    .font(.caption)
                Spacer()
            }
            .padding(.top, 5)
            
            Spacer()
        }
    }
}

#Preview {
    @Previewable @State var book: Book = BookData.shared.userData.first!
    BookView(book: book)
}
