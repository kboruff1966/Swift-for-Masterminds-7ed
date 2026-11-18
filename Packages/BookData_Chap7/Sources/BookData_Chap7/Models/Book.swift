//
//  Book1.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 11/6/26.
//

import SwiftData
import SwiftUI

#if os(macOS)
    import AppKit
    public typealias PlatformImage = NSImage
#else
    import UIKit
    public typealias PlatformImage = UIImage
#endif

extension Image {
    init(platformImage: PlatformImage) {
        #if os(macOS)
            self.init(nsImage: platformImage)
        #else
            self.init(uiImage: platformImage)
        #endif
    }
}

extension PlatformImage {
    /// Loads a named image from an asset catalog and returns it as PNG data on either platform.
    static func pngData(named name: String, in bundle: Bundle = .module) -> Data? {
        #if os(macOS)
            guard let image = bundle.image(forResource: name),
                let tiff = image.tiffRepresentation,
                let bitmap = NSBitmapImageRep(data: tiff)
            else { return nil }
            return bitmap.representation(using: .png, properties: [:])
        #else
            return UIImage(named: name, in: bundle, with: nil)?.pngData()
        #endif
    }
}

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

    public var displayCover: Image {
        if let data = cover, let image = PlatformImage(data: data) {
            return Image(platformImage: image)
        } else {
            return Image("nocover", bundle: .module)
        }
    }

}
