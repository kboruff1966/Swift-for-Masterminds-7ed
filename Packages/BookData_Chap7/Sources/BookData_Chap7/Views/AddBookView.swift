//
//  AddBookView.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/6/26.
//

import SwiftData
import SwiftUI

public struct AddBookView: View {

    @Environment(ApplicationData.self) private var appData
    @Environment(\.modelContext) private var dbContext

    @State private var titleInput: String = ""
    @State private var yearInput: String = ""

    public init() {

    }

    public var body: some View {

        VStack(spacing: 10) {

            TextField("Insert Title", text: $titleInput)
                .textFieldStyle(.roundedBorder)

            TextField("Insert Year", text: $yearInput)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numbersAndPunctuation)

            HStack {

                VStack(alignment: .leading) {
                    Text("Author")
                    NavigationLink(
                        value: "List Authors",
                        label: {
                            Text(appData.selectedAuthor?.name ?? "Select")
                        }
                    )
                }

                Spacer()
                Button("Save") {
                    storeBook()
                }
                .buttonStyle(.borderedProminent)
            }

            Spacer()
        }
        .padding()
        .onAppear {
            if let selectedBook = appData.selectedBook,
                titleInput.isEmpty && yearInput.isEmpty
            {
                titleInput = selectedBook.title
                yearInput = selectedBook.displayYear
            }
        }
    }

    func storeBook() {

        let title = titleInput.trimmingCharacters(in: .whitespaces)

        if let year = Int(yearInput), !title.isEmpty {

            if let oldBook = appData.selectedBook {

                oldBook.title = title
                oldBook.sectionLetter = title.prefix(1).uppercased()
                oldBook.year = year
                oldBook.author = appData.selectedAuthor

                try? dbContext.save()

            } else {

                let cover = UIImage(named: "nocover")?.pngData()

                let newBook = Book(
                    title: title,
                    author: appData.selectedAuthor,
                    cover: cover,
                    year: year
                )

                dbContext.insert(newBook)
                try? dbContext.save()
            }

            appData.selectedAuthor = nil
            appData.selectedBook = nil
            appData.viewPath.removeLast()
        }
    }
}

#Preview {
    AddBookView()
        .environment(ApplicationData.shared)
}
