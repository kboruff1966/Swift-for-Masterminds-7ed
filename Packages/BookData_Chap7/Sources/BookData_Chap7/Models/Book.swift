//
//  Book1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/6/26.
//

import SwiftData
import SwiftUI

@Model
public class Book: Identifiable {

    #Unique<Book>([\.title, \.author, \.year])
    #Index<Book>([\.title, \.author, \.year])

    @Attribute(.unique)
    public var id: UUID = UUID()
    
    public var title = "" {
        didSet {
            sectionLetter = title.prefix(1).uppercased()
        }
    }

    // Stored (not computed) so SwiftData can use it in @Query(sectionBy:).
    // Keep in sync with title whenever title changes.
    public var sectionLetter = ""

    @Relationship(deleteRule: .nullify, inverse: \Author.books)
    public var author: Author?

    @Attribute(.externalStorage)
    var cover: Data?

    public var year = 0

    public init(title: String, author: Author?, cover: Data?, year: Int) {
        self.title = title
        self.author = author
        self.cover = cover
        self.year = year
        self.sectionLetter = title.prefix(1).uppercased()
    }

    public var displayYear: String {
        year > 0 ? String(year) : "Undefined"
    }

    public var displayCover: UIImage {
        if let data = cover, let image = UIImage(data: data) {
            return image
        } else {
            return UIImage(named: "nocover")!
        }
    }

}
