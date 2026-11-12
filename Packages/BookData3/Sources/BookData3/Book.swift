//
//  Book.swift
//  BookData1
//
//  Created by Keith Boruff on 11/5/26.
//


import SwiftUI

public struct Book: Identifiable, Hashable {

    public let id = UUID()

    public var title: String
    public var author: String
    public var cover: String
    public var year: Int
    public var selected: Bool

    public var displayYear: String {
        return String(year)
    }

    public init(title: String, author: String, cover: String, year: Int, selected: Bool) {
        self.title = title
        self.author = author
        self.cover = cover
        self.year = year
        self.selected = selected
    }
}