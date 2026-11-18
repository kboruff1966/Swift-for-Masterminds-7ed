//
//  SwiftUI_3_34_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

/// Listing 3-34: Customizing a text editor
struct SwiftUI_3_34_View: View {

    @State private var text = ""

    var body: some View {
        TextEditor(text: $text)
            .multilineTextAlignment(.leading)
            .lineSpacing(10)
            .autocorrectionDisabled(true)
            .padding(10)
            .scrollContentBackground(.hidden)
            .background(.gray.opacity(0.2))
            .padding(20)
    }
}

#Preview {
    SwiftUI_3_34_View()
}
