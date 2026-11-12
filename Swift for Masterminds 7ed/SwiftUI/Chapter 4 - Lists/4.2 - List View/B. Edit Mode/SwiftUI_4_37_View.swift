//
//  SwiftUI_4_37_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/8/26.
//

import BookData1
import SwiftUI

/// Listing 4-37: Storing the selection in the model
struct SwiftUI_4_37_View: View {

    /// Shadows the app target's own `Book` model within this view (and its nested types)
    typealias Book = BookData1.Book
   

    @Environment(BookData.self) private var appData

    var body: some View {

        @Bindable var appData = appData

        List {
            ForEach($appData.books) { $book in
                CellBook(book: book)
                    .background(.white)
                    .onTapGesture {
                        book.selected.toggle()
                    }
            }
        }
        //        .listStyle(.plain)
    }

    struct CellBook: View {

        let book: Book

        var body: some View {
            HStack(alignment: .top) {

                Image(book.cover)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)

                VStack(alignment: .leading, spacing: 2) {
                    Text(book.title).bold()
                    Text(book.author)
                    Text(book.displayYear)
                        .font(.caption)
                    Spacer()
                }
                .padding(.top, 5)

                Spacer()

                if book.selected {
                    Image(systemName: "checkmark")
                        .foregroundStyle(Color.green)
                        .frame(width: 25, height: 25)
                }
            }
        }
    }
}

#Preview {
    SwiftUI_4_37_View()
        .environment(BookData.shared)
}
