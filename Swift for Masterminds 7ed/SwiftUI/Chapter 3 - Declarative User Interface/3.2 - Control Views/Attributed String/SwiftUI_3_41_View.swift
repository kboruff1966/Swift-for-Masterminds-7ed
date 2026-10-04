//
//  SwiftUI_3_41_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

struct SwiftUI_3_41_View: View {

    @State private var text: AttributedString = ""
    @State private var selection = AttributedTextSelection()

    var body: some View {
        VStack {
            Button(
                action: {
                    let rangeSet = RangeSet(text.characters.ranges(of: "blue"))
                    text[rangeSet].foregroundColor = .blue
                },
                label: {
                    Text("Set Blue")
                }
            )
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
    SwiftUI_3_41_View()
}
