//
//  SwiftUI_4_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import BookData1
import SwiftUI

/// Listing 4-25: Dividing the content into sections
struct SwiftUI_4_25_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {

        List {
            Section {
                HStack {
                    Text("Total Books:")
                    Spacer()
                    Text("\(appData.books.count)")
                }
            } header: {
                Text("Statistics")
            }
            .headerProminence(.increased)

            Section {
                ForEach(appData.books) { book in
                    CellBook(book: book)
                }
            } header: {
                Text("My Books")
            }
            .headerProminence(.increased)
        }

    }

    struct CellBook: View {

        let book: BookData1.Book

        var body: some View {
            HStack(alignment: .top) {
                Image(book.cover)
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
}

#Preview {
    SwiftUI_4_25_View()
        .environment(BookData.shared)
}
