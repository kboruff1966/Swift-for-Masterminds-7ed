//
//  DetailBookView.swift
//  BookData_Chap7
//
//  Created by Keith Boruff on 11/10/26.
//

import SwiftData
import SwiftUI

public struct DetailBookView: View {

    @Environment(ApplicationData.self) private var appData
    let book: Book

    public init(book: Book) {
        self.book = book
    }

    public var body: some View {
        VStack {
            Text(book.title)
                .font(.title)
            
            Image(uiImage: book.displayCover)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            Text(book.author?.name ?? "Undefined")
            Text(book.author?.showBirthday ?? "Undefined")
            Text(book.author?.showPlaceOfBirth ?? "Undefined")

            Spacer()
        }
        .padding()
        .navigationTitle(Text("Book"))
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(
                    "Add Book",
                    systemImage: "pencil.circle",
                    action: {
                        appData.selectedBook = book
                        appData.selectedAuthor = book.author
                        appData.viewPath.append("Add Book")
                    }
                )
            }
        }
    }
}

#Preview(traits: .modifier(PreviewData())) {

    @Previewable @Query var listBooks: [Book]
    NavigationStack {
        DetailBookView(book: listBooks[0])
            .environment(ApplicationData.shared)
    }
}
