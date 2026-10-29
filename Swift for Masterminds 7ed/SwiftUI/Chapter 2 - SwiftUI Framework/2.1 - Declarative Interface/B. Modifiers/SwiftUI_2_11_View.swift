//
//  SwiftUI_2_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-11: Formatting text
struct SwiftUI_2_11_View: View {

    let text =
        "Monsters are real, and ghosts are real too. They live inside us, and sometimes, they win. Stephen King."

    var body: some View {
        Text(text)
            .padding()
            .multilineTextAlignment(.center)
            .lineSpacing(5)
            .textSelection(.enabled)
    }
}

#Preview {
    SwiftUI_2_11_View()
}
