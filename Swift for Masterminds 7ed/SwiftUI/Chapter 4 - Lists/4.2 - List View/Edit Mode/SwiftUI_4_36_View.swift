//
//  SwiftUI_4_36_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/8/26.
//

import SwiftUI

/// Listing 4-36: Customizing the selection
struct SwiftUI_4_36_View: View {

    @Environment(BookData.self) private var appData
    @State private var selectedRow: Book.ID? = nil

    var body: some View {
        List {
            ForEach(appData.userData) { book in
                CellBook(selected: $selectedRow, book: book)
                    .background(.white)
                    .onTapGesture {
                        selectedRow =
                            selectedRow == book.id
                            ? nil
                            : book.id
                    }
            }
        }
        .listStyle(.plain)
    }

    struct CellBook: View {

        @Binding var selected: Book.ID?
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

                if selected == book.id {
                    Image(systemName: "checkmark")
                        .foregroundStyle(Color.green)
                        .frame(width: 25, height: 25)
                }
            }
        }
    }

}

#Preview {
    SwiftUI_4_36_View()
        .environment(BookData.shared)
}
