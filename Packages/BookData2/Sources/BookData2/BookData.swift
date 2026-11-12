//
//  BookDataWithFilter.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

public enum Scopes {
    case title, author, year

    // Partial key path so cases can point at properties of different types
    private var keyPath: PartialKeyPath<Book> {
        switch self {
        case .title: \Book.title
        case .author: \Book.author
        case .year: \Book.year
        }
    }

    // Returns the text the filter should search for this scope
    public func searchText(for book: Book) -> String {
        "\(book[keyPath: keyPath])"
    }
}

@Observable
public class BookData {

    public var showPictures = true
    public var showYear = true

    @ObservationIgnored
    public var books: [Book] {
        didSet {
            filterValues(search: "", scope: .title)
        }
    }

    public var filteredItems: [Book] = []

    public func filterValues(search: String, scope: Scopes = .title) {

        let matches =
            search.isEmpty
            ? books
            : books.filter {
                scope
                    .searchText(for: $0)
                    .localizedStandardContains(search)
            }

        filteredItems = matches.sorted { $0.title < $1.title }
    }

    public func filterValues(search: String, author: String) {

        if search.isEmpty && author.isEmpty {
            filteredItems = books.sorted(by: { $0.title < $1.title })
        } else {

            let list = books.filter({ item in

                guard author.isEmpty || author == item.author else {
                    return false
                }

                guard
                    search.isEmpty
                        || item.title.localizedStandardContains(search)
                else {
                    return false
                }

                return true
            })

            filteredItems = list.sorted { $0.title < $1.title }
        }
    }

    @MainActor
    public static let shared: BookData = BookData()

    private init() {

        books = [

            Book(
                title: "Apple Intelligence for Masterminds",
                author: "J.D Gauchat",
                cover: "book1",
                year: 2026,
                selected: false
            ),
            Book(
                title: "Steve Jobs",
                author: "Isaacson",
                cover: "book2",
                year: 2011,
                selected: false
            ),
            Book(
                title: "Swift for Masterminds",
                author: "J.D Gauchat",
                cover: "book3",
                year: 2026,
                selected: false
            ),
            Book(
                title: "The C Programming Language",
                author: "Kernighan",
                cover: "book4",
                year: 1988,
                selected: false
            ),
            Book(
                title: "Being Digital",
                author: "Negroponte",
                cover: "book5",
                year: 1996,
                selected: false
            ),
            Book(
                title: "Only the Paranoid Survive",
                author: "Grove",
                cover: "book6",
                year: 1999,
                selected: false
            ),
            Book(
                title: "Accidental Empires",
                author: "Cringely",
                cover: "book7",
                year: 1996,
                selected: false
            ),
            Book(
                title: "Bobby Fischer Teaches Chess",
                author: "Fischer",
                cover: "book8",
                year: 1982,
                selected: false
            ),
            Book(
                title: "New Guide to Science",
                author: "Asimov",
                cover: "book9",
                year: 1993,
                selected: false
            ),
            Book(
                title: "Christine",
                author: "King",
                cover: "book10",
                year: 1983,
                selected: false
            ),
            Book(
                title: "IT",
                author: "King",
                cover: "book11",
                year: 1987,
                selected: false
            ),
            Book(
                title: "Ending Aging",
                author: "Grey",
                cover: "book12",
                year: 2007,
                selected: false
            ),
        ]

        filterValues(search: "", scope: .title)
    }

}
