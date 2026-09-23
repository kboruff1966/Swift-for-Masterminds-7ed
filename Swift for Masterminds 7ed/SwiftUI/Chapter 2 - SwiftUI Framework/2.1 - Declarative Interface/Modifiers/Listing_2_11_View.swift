//
//  Listing_2_11_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-11: Formatting text
struct Listing_2_11_View: View {
    var body: some View {
        Text(
            "Monsters are real, and ghosts are real too. They live inside us, and sometimes, they win. Stephen King."
        )
        .padding()
        .multilineTextAlignment(.center)
        .lineSpacing(5)
        .textSelection(.enabled)
    }
}

#Preview {
    Listing_2_11_View()
}
