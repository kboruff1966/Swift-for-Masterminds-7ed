//
//  SwiftUI_2_8_View.swift
//  Swift for Masterminds 7ed
//
//  Created by Keith Boruff on 9/21/26.
//

import SwiftUI

/// Listing 2-8: Applying multiple styles to a text
struct SwiftUI_2_8_View: View {
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .underline()
            .fontWeight(.heavy)
            .shadow(radius: 1, x: 1, y: 1)
    }
}

#Preview {
    SwiftUI_2_8_View()
}
