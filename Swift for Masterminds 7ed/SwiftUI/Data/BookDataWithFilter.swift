//
//  ApplicationData2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

enum Scopes {
    case title, author
}

@Observable
class BookDataWithFilter {

    @ObservationIgnored
    var userData: [Book] {
        didSet {
            filterValues(search: "", scope: .title)
        }
    }

    var filteredItems: [Book] = []

    func filterValues(search: String, scope: Scopes) {

        let matches =
            search.isEmpty
            ? userData
            : userData.filter { item in
                let value = scope == .title ? item.title : item.author
                return value.localizedStandardContains(search)
            }

        filteredItems = matches.sorted { $0.title < $1.title }
    }

    func filterValues(search: String, author: String) {

        if search.isEmpty && author.isEmpty {
            filteredItems = userData.sorted(by: { $0.title < $1.title })
        } else {

            let list = userData.filter({ item in

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

    static let shared: BookDataWithFilter = BookDataWithFilter()

    private init() {

        userData = [

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
