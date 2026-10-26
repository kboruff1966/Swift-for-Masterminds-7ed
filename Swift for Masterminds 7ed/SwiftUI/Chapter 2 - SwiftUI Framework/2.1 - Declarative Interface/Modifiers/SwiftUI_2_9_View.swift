//
//  SwiftUI_2_9_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-9: Nesting Text views
struct SwiftUI_2_9_View: View {
    var body: some View {
        Text("Hello \(Text("World").underline())")
            .font(.largeTitle)
    }
}

#Preview {
    SwiftUI_2_9_View()
}
