//
//  SwiftUI_3_39_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

/// Listing 3-39: Applying attributes to the current font
struct SwiftUI_3_39_View: View {

    @State private var text: AttributedString = ""
    @State private var selection = AttributedTextSelection()
    @Environment(\.fontResolutionContext) var context

    var body: some View {
        VStack {
            HStack {
                Button(
                    action: {
                        text.transformAttributes(in: &selection) { container in
                            let font = container.font ?? .body
                            let bold = font.resolve(in: context).isBold
                            container.font = font.bold(!bold)
                        }
                    },
                    label: {
                        Image(systemName: "bold")
                    }
                )
                .buttonStyle(.glass)

                Button(
                    action: {
                        text.transformAttributes(in: &selection) { container in
                            container.underlineStyle =
                                container.underlineStyle == .single
                                ? .none
                                : .single
                        }
                    },
                    label: {
                        Image(systemName: "underline")
                    }
                )
                .buttonStyle(.glass)
            }

            TextEditor(text: $text, selection: $selection)
                .padding(10)
                .scrollContentBackground(.hidden)
                .background(.gray.opacity(0.2))
                .padding(20)
        }
    }

}

#Preview {
    SwiftUI_3_39_View()
}
