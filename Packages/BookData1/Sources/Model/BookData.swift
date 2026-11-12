//
//  ApplicationData2.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/6/26.
//

import SwiftUI

@Observable
public class BookData {

    private init() {}

    @MainActor
    public static let shared: BookData = BookData()

    public var books = [

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
}
