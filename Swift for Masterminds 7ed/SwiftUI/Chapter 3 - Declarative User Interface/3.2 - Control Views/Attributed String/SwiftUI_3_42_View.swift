//
//  SwiftUI_3_42_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/2/26.
//

import SwiftUI

/// Listing 3-42: Applying attributes to specific characters
struct SwiftUI_3_42_View: View {

    @State private var text: AttributedString = ""
    @State private var selection = AttributedTextSelection()

    var body: some View {
        VStack {

            Button("Set Characters") {

                let uppercaseRanges = text.characters.indices(
                    where: \.isUppercase
                )

                text[uppercaseRanges].foregroundColor = .orange

            }
            .buttonStyle(.glass)

            TextEditor(text: $text, selection: $selection)
                .padding(10)
                .scrollContentBackground(.hidden)
                .background(.gray.opacity(0.2))
                .padding(20)
        }
    }
}

#Preview {
    SwiftUI_3_42_View()
}
