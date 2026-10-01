//
//  SwiftUI_3_31_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/29/26.
//

import SwiftUI

/// Listing 3-31: Selecting text
struct SwiftUI_3_31_View: View {

    @State private var text: String
    @State private var selected: TextSelection? = nil

    init() {
        self.text = (1...10)
            .map { _ in
                String.randomWord(length: .random(in: 5...9))
            }
            .joined(separator: " ")
            .lowercased()
    }

    var body: some View {
        VStack {
            TextField(
                "Insert Text",
                text: $text,
                selection: $selected,
                axis: .vertical
            )
            .textFieldStyle(.roundedBorder)
            .padding(20)
            .lineLimit(5)

            Text(getSelection() ?? "")
            Spacer()
        }
    }

    func getSelection() -> String? {
        if let selected = selected, !selected.isInsertion {
            if case .selection(let range) = selected.indices {
                let substring = text[range]
                return String(substring)
            }
        }
        return nil
    }
}

#Preview {
    SwiftUI_3_31_View()
}
