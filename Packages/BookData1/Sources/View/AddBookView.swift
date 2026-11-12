//
//  AddBookView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/25/26.
//

import SwiftUI

public struct AddBookView: View {

    @Environment(BookData.self) private var appData
    @Environment(\.dismiss) private var dismiss

    @State private var titleInput: String = ""
    @State private var authorInput: String = ""
    @State private var yearInput: String = ""

    var book: BookData1.Book?
    
    public init(book: BookData1.Book? = nil) {
        self.book = book
    }

    public var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            HStack {
                Button("Close") {
                    dismiss()
                }
                .buttonStyle(.glass)

                Spacer()

                Text(book == nil ? "Add Book" : "Edit Book")
                    .font(.body.weight(.bold))

                Spacer()

                Button("Save") {
                    storeBook()
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
            }
            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)
            TextField("Insert Author", text: $authorInput)
                .textFieldStyle(.roundedBorder)
            TextField("Insert Year", text: $yearInput)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numbersAndPunctuation)
            Spacer()
        }
        .padding()
        .onAppear {
            titleInput = book?.title ?? ""
            authorInput = book?.author ?? ""
            yearInput = book?.displayYear ?? ""
        }
    }

    private func storeBook() {
        if book == nil {
            addBook()
        } else {
            editBook()
        }
    }

    private func addBook() {

        let title = titleInput.trimmingCharacters(in: .whitespaces)
        let author = authorInput.trimmingCharacters(in: .whitespaces)

        if let year = Int(yearInput), !title.isEmpty && !author.isEmpty {

            let newBook = BookData1.Book(
                title: title,
                author: author,
                cover: "nocover",
                year: year,
                selected: false
            )

            appData.books.append(newBook)
        }
    }

    private func editBook() {

        // The book being edited should always exist in the data
        guard
            let book,
            let index = appData.books.firstIndex(where: { $0.id == book.id })
        else {
            assertionFailure(
                "editBook() called for a book that is nil or not in userData"
            )
            return
        }

        let title = titleInput.trimmingCharacters(in: .whitespaces)
        let author = authorInput.trimmingCharacters(in: .whitespaces)

        if let year = Int(yearInput), !title.isEmpty && !author.isEmpty {

            // Keep the existing cover when editing
            let updatedBook = BookData1.Book(
                title: title,
                author: author,
                cover: appData.books[index].cover,
                year: year,
                selected: false
            )

            appData.books[index] = updatedBook
        }
    }

}

#Preview {
    NavigationStack {
        AddBookView()
            .environment(BookData.shared)
    }
}
