//
//  Author.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/6/26.
//

import SwiftData
import SwiftUI

@Model
public class Author: Identifiable {

    @Attribute(.unique)
    public var id: UUID = UUID()

    public var name: String = ""

    @Relationship(deleteRule: .nullify)
    public var books: [Book]? = []

    var info: Data?

    public init(name: String, books: [Book], info: Data? = nil) {
        self.name = name
        self.books = books
        self.info = info
    }

    var listBooks: [Book] {
        let sortList = books?.sorted(by: { $0.title < $1.title }) ?? []
        return sortList
    }

    @MainActor
    var showBirthday: String? {
        
//        let decoder = PropertyListDecoder()
        let decoder = JSONDecoder()
        
        guard let info,
              let authorInfo = try? decoder.decode(AuthorInfo.self, from: info),
              let date = authorInfo.birthday,
              date < Date()
        else {
            return nil
        }
        
        return date.formatted(date: .abbreviated, time: .omitted)
    }

    @MainActor
    var showPlaceOfBirth: String? {
        
//        let decoder = PropertyListDecoder()
        let decoder = JSONDecoder()
        
        guard let info,
              let authorInfo = try? decoder.decode(AuthorInfo.self, from: info),
              !authorInfo.placeOfBirth.isEmpty
        else {
            return nil
        }
        
        return authorInfo.placeOfBirth
    }

}
