//
//  SwiftUI_4_25_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/7/26.
//

import SwiftUI

/// Listing 4-25: Dividing the content into sections
struct SwiftUI_4_25_View: View {

    @Environment(BookData.self) private var appData

    var body: some View {

        List {
            Section(header: Text("Statistics")) {
                HStack {
                    Text("Total Books:")
                    Spacer()
                    Text("\(appData.userData.count)")
                }
            }
            .headerProminence(.increased)

            Section(header: Text("My Books")) {
                ForEach(appData.userData) { book in
                    CellBook(book: book)
                }
            }
            .headerProminence(.increased)
        }

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
