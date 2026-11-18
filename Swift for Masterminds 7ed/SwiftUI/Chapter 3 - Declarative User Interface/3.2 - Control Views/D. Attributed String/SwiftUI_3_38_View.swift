//
//  SwiftUI_3_38_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

/// Listing 3-38: Applying attributes to the selected text
struct SwiftUI_3_38_View: View {

    @State private var text: AttributedString = ""
    @State private var selection = AttributedTextSelection()

    var body: some View {
        VStack {
            
            Button(
                action: {
                    text.transformAttributes(in: &selection) { container in
                        container.font = .body.bold()
                    }
                },
                label: {
                    Image(systemName: "bold")
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
    SwiftUI_3_38_View()
}
