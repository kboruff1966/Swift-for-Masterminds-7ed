//
//  SwiftUI_2_12_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 10/26/26.
//

import SwiftUI

/// Listing 2-12: Truncating text
struct SwiftUI_2_12_View: View {

    let text =
        "Monsters are real, and ghosts are real too. They live inside us, and sometimes, they win. Stephen King."

    var body: some View {
        Text(text)
            .padding()
            .lineLimit(1)
            .truncationMode(.middle)
    }
}

#Preview {
    SwiftUI_2_12_View()
}
