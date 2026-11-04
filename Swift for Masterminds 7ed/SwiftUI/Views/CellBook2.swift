//
//  CellBook2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/3/26.
//

import SwiftUI

struct CellBook2: View {

    let book: Book
    @Environment(BookDataWithFilter.self) private var appData

    var body: some View {
        HStack(alignment: .top) {

            if appData.showPictures {
                Image(book.cover)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 100)
            }

            VStack(alignment: .leading, spacing: 2) {
                Text(book.title)
                    .bold()
                Text(book.author)

                if appData.showYear {
                    Text(book.displayYear)
                        .font(.caption)
                }

                Spacer()
            }
            .padding(.top, 5)

            Spacer()
        }
    }

}

#Preview {

    @Previewable @State var book: Book = BookDataWithFilter.shared.userData
        .first!

    CellBook2(book: book)
        .environment(BookDataWithFilter.shared)
}
