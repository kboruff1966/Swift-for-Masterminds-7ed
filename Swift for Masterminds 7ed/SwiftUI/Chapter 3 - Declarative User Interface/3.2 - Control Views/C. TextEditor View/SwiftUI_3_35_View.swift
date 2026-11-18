//
//  SwiftUI_3_35_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

/// Listing 3-35: Selecting text in a text editor
struct SwiftUI_3_35_View: View {

    @State private var text = ""
    @State private var selected: TextSelection? = nil

    var body: some View {

        VStack {

            Button("Replace Selected") {
                if let selected = selected, !selected.isInsertion {
                    if case .selection(let range) = selected.indices {
                        text.replaceSubrange(range, with: "Howdy")
                    }
                }
            }
            .buttonStyle(.borderedProminent)

            TextEditor(text: $text, selection: $selected)
                .padding(10)
                .scrollContentBackground(.hidden)
                .background(.gray.opacity(0.2))
                .padding(20)
        }
    }
}

#Preview {
    SwiftUI_3_35_View()
}
