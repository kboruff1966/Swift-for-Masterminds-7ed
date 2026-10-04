//
//  SwiftUI_3_37_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/1/26.
//

import SwiftUI

/// Listing 3-37: Allowing users to generate attributed text
struct SwiftUI_3_37_View: View {

    @State private var text: AttributedString = ""

    var body: some View {
        VStack {
            TextEditor(text: $text)
                .padding(10)
                .scrollContentBackground(.hidden)
                .background(.gray.opacity(0.2))
                .padding(20)
        }
    }
}

#Preview {
    SwiftUI_3_37_View()
}
