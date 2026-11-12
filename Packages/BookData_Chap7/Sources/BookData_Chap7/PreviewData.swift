//
//  PreviewData.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/8/26.
//

import SwiftData
import SwiftUI

public struct PreviewData: PreviewModifier {

    public init() {

    }

    public static func makeSharedContext() throws -> ModelContainer {

        let config = ModelConfiguration(isStoredInMemoryOnly: true)

        let container = try ModelContainer(
            for: Book.self,
            Author.self,
            configurations: config
        )

        // Authors (one instance per author so books can share them)
        let gauchat = Author(
            name: "J.D Gauchat",
            books: [],
            info: archiveInfo(placeOfBirth: "Argentina")
        )
        let isaacson = Author(
            name: "Isaacson",
            books: [],
            info: archiveInfo(year: 1952, month: 10, day: 20, placeOfBirth: "New Orleans, Louisiana")
        )
        let kernighan = Author(
            name: "Kernighan",
            books: [],
            info: archiveInfo(year: 1942, month: 1, day: 30, placeOfBirth: "Toronto, Canada")
        )
        let negroponte = Author(
            name: "Negroponte",
            books: [],
            info: archiveInfo(year: 1943, month: 12, day: 1, placeOfBirth: "New York City, New York")
        )
        let grove = Author(
            name: "Grove",
            books: [],
            info: archiveInfo(year: 1936, month: 9, day: 2, placeOfBirth: "Budapest, Hungary")
        )
        let cringely = Author(
            name: "Cringely",
            books: [],
            info: archiveInfo(placeOfBirth: "Apopka, Florida")
        )
        let fischer = Author(
            name: "Fischer",
            books: [],
            info: archiveInfo(year: 1943, month: 3, day: 9, placeOfBirth: "Chicago, Illinois")
        )
        let asimov = Author(
            name: "Asimov",
            books: [],
            info: archiveInfo(year: 1920, month: 1, day: 2, placeOfBirth: "Petrovichi, Russia")
        )
        let king = Author(
            name: "King",
            books: [],
            info: archiveInfo(year: 1947, month: 9, day: 21, placeOfBirth: "Portland, Maine")
        )
        let grey = Author(
            name: "Grey",
            books: [],
            info: archiveInfo(year: 1963, month: 4, day: 20, placeOfBirth: "London, England")
        )

        let authors = [
            gauchat, isaacson, kernighan, negroponte, grove,
            cringely, fischer, asimov, king, grey,
        ]

        for author in authors {
            container.mainContext.insert(author)
        }

        // Load covers from this package's asset catalog (Bundle.module), not the app's main bundle
        let book1 = UIImage(named: "book1", in: .module, with: nil)?.pngData()
        let book2 = UIImage(named: "book2", in: .module, with: nil)?.pngData()
        let book3 = UIImage(named: "book3", in: .module, with: nil)?.pngData()
        let book4 = UIImage(named: "book4", in: .module, with: nil)?.pngData()
        let book5 = UIImage(named: "book5", in: .module, with: nil)?.pngData()
        let book6 = UIImage(named: "book6", in: .module, with: nil)?.pngData()
        let book7 = UIImage(named: "book7", in: .module, with: nil)?.pngData()
        let book8 = UIImage(named: "book8", in: .module, with: nil)?.pngData()
        let book9 = UIImage(named: "book9", in: .module, with: nil)?.pngData()
        let book10 = UIImage(named: "book10", in: .module, with: nil)?.pngData()
        let book11 = UIImage(named: "book11", in: .module, with: nil)?.pngData()
        let book12 = UIImage(named: "book12", in: .module, with: nil)?.pngData()

        let books = [
            Book(
                title: "Apple Intelligence for Masterminds",
                author: gauchat,
                cover: book1,
                year: 2026
            ),
            Book(
                title: "Steve Jobs",
                author: isaacson,
                cover: book2,
                year: 2011
            ),
            Book(
                title: "Swift for Masterminds",
                author: gauchat,
                cover: book3,
                year: 2026
            ),
            Book(
                title: "The C Programming Language",
                author: kernighan,
                cover: book4,
                year: 1988
            ),
            Book(
                title: "Being Digital",
                author: negroponte,
                cover: book5,
                year: 1996
            ),
            Book(
                title: "Only the Paranoid Survive",
                author: grove,
                cover: book6,
                year: 1999
            ),
            Book(
                title: "Accidental Empires",
                author: cringely,
                cover: book7,
                year: 1996
            ),
            Book(
                title: "Bobby Fischer Teaches Chess",
                author: fischer,
                cover: book8,
                year: 1982
            ),
            Book(
                title: "New Guide to Science",
                author: asimov,
                cover: book9,
                year: 1993
            ),
            Book(
                title: "Christine",
                author: king,
                cover: book10,
                year: 1983
            ),
            Book(
                title: "IT",
                author: king,
                cover: book11,
                year: 1987
            ),
            Book(
                title: "Ending Aging",
                author: grey,
                cover: book12,
                year: 2007
            ),
        ]

        for book in books {
            container.mainContext.insert(book)
        }

        return container
    }

    // Encodes an AuthorInfo the same way AddAuthorView does, so Author.showBirthday/showPlaceOfBirth can decode it
    private static func archiveInfo(
        year: Int? = nil,
        month: Int? = nil,
        day: Int? = nil,
        placeOfBirth: String
    ) -> Data? {
        var birthday: Date?
        if let year, let month, let day {
            birthday = Calendar.current.date(from: DateComponents(year: year, month: month, day: day))
        }

        let authorInfo = AuthorInfo(birthday: birthday, placeOfBirth: placeOfBirth)
//        return try? PropertyListEncoder().encode(authorInfo)
        return try? JSONEncoder().encode(authorInfo)
    }

    public func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
}
