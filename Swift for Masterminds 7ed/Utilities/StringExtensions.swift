//
//  StringExtensions.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/26/26.
//

import Foundation
import Playgrounds

extension Character {

    nonisolated static func randomCharacter(
        from range: ClosedRange<UInt8>,
        _ additionalRanges: ClosedRange<UInt8>...
    ) -> Character {

        let ranges = [range] + additionalRanges

        return Character(
            UnicodeScalar(UInt8.random(in: ranges.randomElement()!))
        )
    }

    nonisolated static func randomPrintableASCII() -> Character {
        randomCharacter(from: 33...126)
    }

    nonisolated static func randomAlphabeticASCII() -> Character {
        randomCharacter(from: 65...90, 97...122)
    }
}

extension String {

    enum StringError: Error {
        case indexOutOfBounds
    }

    nonisolated static func randomWord(
        length: Int = 10,
        using characterGenerator: () -> Character = Character
            .randomAlphabeticASCII
    ) -> String {
        return String((0..<length).map { _ in characterGenerator() })
    }

    nonisolated mutating func insertRandomWord(at i: Int, length: Int) throws
        -> String
    {
        guard (0..<self.count).contains(i) else {
            throw StringError.indexOutOfBounds
        }

        let index = self.index(self.startIndex, offsetBy: i)
        let word = String.randomWord(length: length)

        self.insert(contentsOf: word, at: index)

        return word
    }
}

#Playground {

    let values = [
        "Keith Boruff",
        "Detroit Tigers",
        "Winter Springs",
        "Key West, Florida",
        "Port Jeff Station",
        "Comerica Park",
        "Detroit Red Wings",
        "New York Rangers",
        "Alligator",
        "King James Bible",
    ]

    func formIndexExamples(name: String) {

        print("\n\(name)")
        print(String(repeating: "=", count: name.count))

        var index = name.startIndex
        name.formIndex(after: &index)
        print("formIndex(&index, after:) == '\(name[index])'")

        index = name.endIndex
        name.formIndex(before: &index)
        print("formIndex(&index, before:) == '\(name[index])'")

        index = name.startIndex

        // will crash if offset beyond bounds of collection
        let offsetBy = Int.random(in: 0..<name.count)
        name.formIndex(&index, offsetBy: offsetBy)
        print("formIndex(&index, offsetBy: \(offsetBy)) == '\(name[index])'")

        index = name.startIndex
        let offset = Int.random(in: 0...(name.count + 5))
        let limit = name.index(name.endIndex, offsetBy: -1)

        if name.formIndex(&index, offsetBy: offset, limitedBy: limit) {

            print(
                "formIndex(&index, offsetBy: \(offset), limitedBy:) == '\(name[index])'"
            )
        } else {
            print("offset '\(offset)' is beyond the limitedBy")
        }
    }

    func insertChar() throws {

        var name = values.randomElement()!
        let char: Character = Character.randomPrintableASCII()

        let offset = Int.random(in: 0..<name.count)
        let index = name.index(name.startIndex, offsetBy: offset)

        name.insert(char, at: index)

        let message = "\"\(name)\" - inserted: '\(char)' at position: \(offset)"
        print(message)
    }

    func insertRandomWordExample() {

        var name = values.randomElement()!
        let offset = Int.random(in: 0..<name.count)

        do {
            let word = try name.insertRandomWord(
                at: offset,
                length: Int.random(in: 1...10)
            )

            let message =
                "\"\(name)\" - inserted: '\(word)' at position: \(offset)"
            print(message)

        } catch {
            print("Failed to insert word at position \(offset): \(error)")
        }
    }

    let c = Character.randomCharacter(from: 33...126)
    print(c)

}
