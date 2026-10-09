//
//  SwiftUI_4_38_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/8/26.
//

import SwiftUI

/// Listing 4-38: Implementing a custom button to delete the rows
struct SwiftUI_4_38_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {
        List {
            ForEach(appData.userData) { book in
                CellBook(book: book)
            }
        }
        .listStyle(.plain)
    }

    struct CellBook: View {

        @Environment(BookData.self) private var appData
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

                Button(
                    action: {
                        removeBook(book: book)
                    },
                    label: {
                        Image(systemName: "trash")
                            .foregroundStyle(.white)
                            .frame(width: 30, height: 30)
                    }
                )
                .padding(.top, 5)
                .buttonStyle(.glassProminent)
                .tint(.red)
            }
        }

        func removeBook(book: Book) {

            if let index = appData.userData.firstIndex(where: {
                $0.id == book.id
            }) {
                appData.userData.remove(at: index)
            }
        }
    }
}

#Preview {
    SwiftUI_4_38_View()
        .environment(BookData.shared)
}
